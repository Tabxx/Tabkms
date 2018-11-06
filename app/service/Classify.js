const Service = require('egg').Service;

class ClassifyService extends Service {

    /**
     * 查询知识分类，生成菜单
     * @returns {Promise<void>}
     */
    async getClass() {
        let topClass = await this.app.mysql.select('kms_classify', {
            where: {
                pid: 0
            }
        });
        topClass = JSON.stringify(topClass);
        topClass = JSON.parse(topClass);

        let classArr = [];
        for (let obj in topClass) {
            classArr[obj] = topClass[obj];
            const childClass = await this.app.mysql.select('kms_classify', {
                where: {
                    pid: topClass[obj].id
                }
            });
            topClass[obj].child = childClass;
        }

        return classArr;
    }

    /**
     * 查询知识分类，不生成菜单
     * @returns {Promise<any>}
     */
    async getAllClass() {
        let topClass = await this.app.mysql.select('kms_classify');
        topClass = this.ctx.helper.toArr(topClass);
        return topClass;
    }

    /**
     * 知识分类列表
     * @param type
     * @returns {Promise<*>}
     */
    async getLists(type) {
        const {
            app,
            ctx
        } = this;
        let sql = 'SELECT a.*, b.username, c.name FROM kms_knowledge a, kms_users b, kms_classify c ' +
            'WHERE c.id = a.classids and a.author = b.id and a.classids = ? and a.status = ? order by createdate desc';
        let classLists = await app.mysql.query(sql, [type, 1]);

        classLists = ctx.helper.toArr(classLists);
        return classLists;
    }

    /**
     * 顶级分类添加
     *
     * @param {string} [name='']
     * @returns
     * @memberof ClassifyService
     */
    async addClass(name = '', pid = 0) {
        if (!name) return false;

        const result = await this.app.mysql.insert('kms_classify', {
            name,
            pid
        });
        return result.affectedRows === 1;
    }

    /**
     * 修改分类名
     * @param {*} name
     * @param {*} id
     * @returns
     * @memberof ClassifyService
     */
    async editClass(name, id) {
        if (!name) return false;

        const result = await this.app.mysql.update('kms_classify', {
            id,
            name
        });

        return result.affectedRows === 1;
    }

    /**
     * 删除分类
     * @param {*} id
     * @returns
     * @memberof ClassifyService
     */
    async delClass(id) {
        return await this.app.mysql.delete('kms_classify', {
            id,
        });
    }

    async getSimilar(id) {
        const {
            app,
            ctx
        } = this;
        // 获取父级id
        let pclass = await app.mysql.get('kms_classify', {
            id
        });

        // 获取同级菜单
        let classes = await app.mysql.select('kms_classify', {
            where: {
                pid: pclass.pid
            }
        });

        return ctx.helper.toArr(classes);
    }
}

module.exports = ClassifyService;