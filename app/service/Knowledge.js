const Service = require('egg').Service;

class KnowledgeService extends Service {

    /**
     * 添加知识
     * @param knowledge
     * @returns {Promise<boolean>}
     */
    async addKnowledge(knowledge, status = 0) {
        const enclosure = typeof knowledge.enclosure === "undefined" ? ' ' : knowledge.enclosure.toString();
        const result = await this.app.mysql.insert('kms_knowledge', {
            title: knowledge.title,
            author: parseInt(knowledge.id),
            content: knowledge.content,
            classids: parseInt(knowledge.classids),
            createdate: this.app.mysql.literals.now,
            enclosure: enclosure,
            tags: knowledge.tags,
            power: knowledge.power,
            status
        });
        return result.affectedRows === 1;
    }

    /**
     * 管理员查询所有知识
     */
    async getAllKonwledges(page, limit, status = 0, where) {

        const {
            app,
            ctx
        } = this;

        let offset = page == 1 ? 0 : (page - 1) * limit - 1;
        let w = `k.author = u.id and k.classids = c.id and k.status = ${status}`;
        if (where) {
            for (let obj in where) {
                if (where[obj]) {
                    switch (obj) {
                        case 'author':
                            {
                                w += ` and u.username = "${where[obj]}"`;
                                break;
                            }
                        case 'title':
                            {
                                w += ` and k.title = "${where[obj]}"`;
                                break;
                            }
                        default:
                            {
                                w += ` and k.${obj} = ${where[obj]}`;
                                break;
                            }
                    }
                }
            }
        }

        let sql = `select k.id, u.id as uid, c.id as cid, k.title, k.content, k.createdate, k.browse_Number, k.status, u.username, c.name as class
         from kms_knowledge k, kms_users u , kms_classify c
         where ${w} limit ${(page - 1) * limit},${limit}`;

        // 数据库查询所有标签
        // let knows = await app.mysql.select('kms_knowledge', {
        //     where: {
        //         status: 0
        //     }, // WHERE 条件
        //     limit: parseInt(limit), // 返回数据量
        //     offset: parseInt(offset), // 数据偏移量
        // });
        let knows = await app.mysql.query(sql);

        // 去除row...
        knows = ctx.helper.toArr(knows);
        knows = ctx.helper.getStatusAttr(knows);
        if (knows !== null) {
            return knows;
        }
        return null;
    }

    /**
     * 查询用户知识
     * @param uid
     * @returns {Promise<*>}
     */
    async getUserKonwledges(uid, status = [0, 1]) {
        const {
            ctx,
            app
        } = this;
        // uid为空返回null
        if (uid === null) return null;

        let knowledges = await app.mysql.select('kms_knowledge', {
            where: {
                status,
                author: uid
            },
            orders: [
                ['createdate', 'desc']
            ],
        });

        knowledges = ctx.helper.toArr(knowledges);
        knowledges = ctx.helper.getStatusAttr(knowledges);

        return knowledges;
    }

    /**
     * 知识详情
     * @param kid
     * @returns {Promise<*>}
     */
    async getDetail(kid) {
        let detail = await this.app.mysql.get('kms_knowledge', {
            id: kid
        });

        detail = this.ctx.helper.toArr(detail);
        let user = await this.app.mysql.select('kms_users', {
            where: {
                id: detail.author
            },
            columns: ['username'],
        });
        user = this.ctx.helper.toArr(user);
        detail.author = user[0].username;
        return detail;
    }

    /**
     * 待审核文档总数
     * @returns {Promise<*>}
     */
    async getKonwsCount() {
        const count = await this.app.mysql.count('kms_knowledge', {
            status: 0
        });
        return count;
    }

    /**
     * 知识浏览数
     * @param id
     * @returns {Promise<boolean>}
     */
    async addBrowseNum(id) {
        const sql = 'update kms_knowledge set browse_Number=browse_Number+1 where id = ?'

        const result = await this.app.mysql.query(sql, [id]);
        return result.affectedRows === 1;
    }

    /**
     * 返回知识总数
     */
    async getKonwledgeCount() {
        const {
            app,
            ctx
        } = this;

        return app.mysql.count('kms_knowledge', {
            status: 1
        });
    }

    /**
     * 查询指定分类的知识
     * @param {*} cid 
     */
    async getClassKnow(cid) {
        let list = await this.app.mysql.select('kms_knowledge', {

            where: {
                classids: cid,
            },
        });
        list = this.ctx.helper.toArr(list);
        return list;
    }

    /**
     * 记录用户行为
     * @param {*} uid 用户id
     * @param {*} tid 知识id
     */
    async userAction(uid,tid){
        const result = await this.app.mysql.insert('kms_action', { uid, tid });
    }


}
module.exports = KnowledgeService;