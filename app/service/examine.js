const Service = require('egg').Service;

class ExamineService extends Service {

    /**
     * 文档审核通过
     * @param kid
     * @param classId
     * @returns {Promise<void>}
     */
    async updateDoc(kid, classId) {

        const row = {
            id: kid,
            classids: classId
        };
        const result = await this.app.mysql.update('kms_knowledge', row);

        // 修改文档状态
        if (result.affectedRows === 1) {
            return this.editDocStatus(kid, 1);
        }

        return false;
    }

    /**
     * 文档状态改变
     * @param {Number} kid 文档ID
     * @param {Number} status 文档状态，默认0，未审核
     */
    async editDocStatus(kid, status = 0) {
        const { app } = this;
        let row = {
            id: kid,
            status
        }
        const result = await app.mysql.update('kms_knowledge', row);

        return result.affectedRows === 1;
    }

}

module.exports = ExamineService;