const Service = require('egg').Service;

class SearchService extends Service {

    /**
     * 关键词搜索
     * @param keyword
     * @returns {Promise<void>}
     */
    async search(keyword) {

        const sql = 'SELECT a.*, b.username, c.name FROM kms_knowledge a, kms_users b, kms_classify c ' +
             'WHERE ( a.status = ? AND a.author = b.id AND a.classids = c.id) AND ( title LIKE CONCAT(\'%\',?,\'%\') OR summary LIKE CONCAT(\'%\',?,\'%\') )';
        let result = await this.app.mysql.query(sql, [1, keyword, keyword]);
        result = this.ctx.helper.toArr(result);
        return result;
    }

}

module.exports = SearchService;