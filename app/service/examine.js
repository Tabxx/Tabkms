const Service = require('egg').Service;

class ExamineService extends Service {

    /**
     * 文档状态改变
     * @param kid
     * @param classId
     * @returns {Promise<void>}
     */
    async updateDoc(kid, classId){

        const row = {
            id: kid,
            status: 1,
            classids: classId
        };
        const result = await this.app.mysql.update('kms_knowledge', row);

        return result.affectedRows === 1;
    }

}

module.exports = ExamineService;