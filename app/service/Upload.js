const Service = require('egg').Service;

class UploadService extends Service {

    /**
     * 上传文件存入数据库
     * @param filename
     * @param url
     * @returns {IterableIterator<number>}
     */
    async upload(filename, url) {

        // 开启事务
        const result = await this.app.mysql.beginTransactionScope(async conn => {
            const res = await conn.insert('kms_enclosure', {
                name: filename,
                url,
            });

            // 插入成功返回id
            return { success: true, id: res.insertId};
        }, this.ctx);

        return result.id;
    }

}

module.exports = UploadService;