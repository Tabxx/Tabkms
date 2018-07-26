const Service = require('egg').Service;

class KnowledgeService extends Service {

    /**
     * 添加知识
     * @param knowledge
     * @returns {Promise<boolean>}
     */
    async addKnowledge(knowledge){
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
        });
        return result.affectedRows === 1;
    }

    /**
     * 管理员查询所有知识
     */
    async getAllKonwledges(page, limit) {

        let offset = page == 1 ? 0 : (page - 1) * limit - 1;

        // 数据库查询所有标签
        let knows = await this.app.mysql.select('kms_knowledge', {
            where: { status: 0}, // WHERE 条件
            limit: parseInt(limit), // 返回数据量
            offset: parseInt(offset), // 数据偏移量
        });

        // 去除row...
        knows = this.ctx.helper.toArr(knows);
        knows = this.ctx.helper.getStatusAttr(knows);
        if (knows !== null){
            return knows;
        }
        return null;
    }

    /**
     * 查询用户知识
     * @param uid
     * @returns {Promise<*>}
     */
    async getUserKonwledges(uid){
        // uid为空返回null
        if(uid === null) return null;

        let knowledges = await this.app.mysql.select('kms_knowledge', {
            where: {status: [0, 1], author: uid},
            orders: [['createdate','desc']],
        });

        knowledges = this.ctx.helper.toArr(knowledges);

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
            where: {id: detail.author},
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
    async getKonwsCount(){
        const count = await this.app.mysql.count('kms_knowledge', {status:0});
        return count;
    }

    /**
     * 知识浏览数
     * @param id
     * @returns {Promise<boolean>}
     */
    async addBrowseNum(id){
        const sql = 'update kms_knowledge set browse_Number=browse_Number+1 where id = ?'

        const result = await this.app.mysql.query(sql, [id]);
        return result.affectedRows === 1;
    }

}

module.exports = KnowledgeService;