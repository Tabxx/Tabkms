const Service = require('egg').Service;

class AlbumService extends Service {

    /**
     * 获取知识专辑
     */
    async getAlbum() {
        let result = await this.app.mysql.select('kms_album', {
            where: {
                status: 1
            }
        });

        return this.ctx.helper.toArr(result);
    }

    /**
     * 添加知识专辑
     * @param {*} params 
     */
    async addAlbum(params) {
        const {
            app,
            ctx
        } = this;

        const result = await app.mysql.beginTransactionScope(async conn => {
            let chapter = params.chapter;
            let test = params.test;

            // 插入测试题目
            let test_c = {};
            for (let item of test) {
                let result = await app.mysql.insert('kms_test', {
                    content: item.content,
                    option_a: item.optionA,
                    option_b: item.optionB,
                    option_c: item.optionC,
                    option_d: item.optionD,
                    correct: item.correct,
                    status: 1
                });

                item.cid = result.insertId;
                if (!test_c[item.csort]) {
                    test_c[item.csort] = item.cid;
                } else {
                    test_c[item.csort] += ',' + item.cid;
                }
            }

            // 插入章节
            let cids = [];
            for (let item of chapter) {
                item.tids = test_c[item.sort] || '';
                let result = await app.mysql.insert('kms_chapter', {
                    name: item.name,
                    knowledge: item.kid,
                    test: item.tids,
                    status: 1
                });
                cids.push(result.insertId);
            }

            // 插入知识专辑
            let album = await app.mysql.insert('kms_album', {
                name: params.name,
                starttime: params.starttime,
                endtime: params.endtime,
                intro: params.intro,
                integral: params.integral,
                chapters: cids.join(','),
                image: params.image,
                status: 1
            });

            // 员工-专辑添加
            let aid = album.insertId;
            let uids = params.users.split(',');

            for (let uid of uids) {
                let au = await app.mysql.insert('kms_album_user', {
                    aid,
                    uid,
                    status: 1
                });
            }

            return true;
        }, ctx);
    }

    /**
     * 查询知识专辑详情
     */
    async getAlbumDetail(id) {
        if (!id) return null;

        // let sql = `select a.id, a.name, a.starttime, a.endtime, a.intro, a.chapters, a.image, a.integral, c.name as cname, k.title
        //     from kms_album a, kms_chapter c, kms_knowledge k 
        //     where c.id in (a.chapters) and c.knowledge = k.id and a.status = 1 and a.id=?`;

        // let result = await this.app.mysql.query(sql, [id]);
        let result = await this.app.mysql.get('kms_album', {
            id
        });

        return this.ctx.helper.toArr(result);
    }

    /**
     * 根据章节id获取章节内容
     * @param {*} cids
     * @returns
     * @memberof AlbumService
     */
    async getAlbumChapter(cids) {
        let sql = `select * from kms_chapter where id in (${cids})`;
        let chapters = await this.app.mysql.query(sql);
        return this.ctx.helper.toArr(chapters);
    }

    /**
     * 根据章节中知识id获取知识详情
     * @param {*} kids
     * @returns
     * @memberof AlbumService
     */
    async getAlbumKnow(kids) {
        let sql = `select title from kms_knowledge where id in (${kids})`;
        let knowledges = await this.app.mysql.query(sql);
        return this.ctx.helper.toArr(knowledges);
    }
}

module.exports = AlbumService;