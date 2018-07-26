const Service = require('egg').Service;

class CommunityService extends Service {

    /**
     * 知识社区首页
     * @returns {Promise<*>}
     */
    async index(){
        let sql = 'SELECT a.*, b.username FROM kms_question a, kms_users b ' +
            'WHERE a.author = b.id order by createdate desc';

        let questions = await this.app.mysql.query(sql);

        questions = this.ctx.helper.toArr(questions);
        return questions;
    }

    /**
     * 我的提问
     * @param id
     * @returns {Promise<void>}
     */
    async myQuestion(id){
        let question = await this.app.mysql.select('kms_question', {
            where: {author: id},
            limit: 4,
            orders: [['createdate','desc']],
        });

        question = this.ctx.helper.toArr(question);

        return question;
    }

    /**
     * 添加问题
     * @param question
     * @returns {Promise<void>}
     */
    async putQuestion(question){
        const result = await this.app.mysql.insert('kms_question', {
            title: question.title,
            author: parseInt(this.ctx.session.user.id),
            createdate: this.app.mysql.literals.now,
            content: question.content,
        });
        return result.affectedRows === 1;
    }

    /**
     * 问题详情
     * @param id
     * @returns {Promise<*>}
     */
    async detail(id){
        let detail = await this.app.mysql.get('kms_question', {id});

        detail = this.ctx.helper.toArr(detail);
        return detail;
    }

    /**
     * 问题浏览数
     * @param id
     * @returns {Promise<boolean>}
     */
    async addBrowseNum(id){
        const sql = 'update kms_question set browse_Number=browse_Number+1 where id = ?'

        const result = await this.app.mysql.query(sql, [id]);
        return result.affectedRows === 1;
    }

    /**
     * 提问
     * @returns {Promise<void>}
     */
    async answer(answer){

        const result = await this.app.mysql.beginTransactionScope(async conn => {
            await this.app.mysql.insert('kms_answer', {
                author: parseInt(answer.id),
                time: this.app.mysql.literals.now,
                answer: answer.answer,
                qid: parseInt(answer.qid)
            });

            return { success: true };
        }, this.ctx);

        return result;
    }

    /**
     * 问题回答
     * @param id
     * @returns {Promise<*>}
     */
    async getAnswer(id) {

        let sql = 'SELECT a.*, b.username, b.id FROM kms_answer a, kms_users b ' +
            'WHERE a.author = b.id AND qid = ? AND a.status = 0 order by time desc';
        let answers = await this.app.mysql.query(sql, [id]);

        answers = this.ctx.helper.toArr(answers);
        return answers;
    }

    /**
     * 最佳回答
     * @param data
     * @returns {Promise<void>}
     */
    async bestAnswer(data){
        const result = await this.app.mysql.beginTransactionScope(async conn => {
            const row = {
                id: parseInt(data.aid),
                status: 1,
            };
            await conn.update('kms_answer', row);
            return { success: true };
        }, this.ctx);

        return result;
    }

    /**
     * 获取最佳回答
     * @param id
     * @returns {Promise<*>}
     */
    async best(id){
        let sql = 'SELECT * FROM kms_answer ' +
            'WHERE qid = ? AND status = 1';
        let answers = await this.app.mysql.query(sql, [id]);

        answers = this.ctx.helper.toArr(answers);
        return answers;
    }

}

module.exports = CommunityService;