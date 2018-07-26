const Service = require('egg').Service;

class TagsService extends Service {

    /**
     * 获取标签
     * @returns {Promise<void>}
     */
    async getTags(page, limit) {

        let offset = page == 1 ? 0 : (page - 1) * limit - 1;

        // 数据库查询所有标签
        let tags = await this.app.mysql.select('kms_tags', {
            where: { status: 1}, // WHERE 条件
            limit: parseInt(limit), // 返回数据量
            offset: parseInt(offset), // 数据偏移量
        });

        // 去除row...
        tags = JSON.stringify(tags);
        tags = JSON.parse(tags);

        if (tags !== null){
            return tags;
        }
        return null;
    }

    /**
     * 标签总数
     * @returns {Promise<*>}
     */
    async getTagsCount() {

        const count = await this.app.mysql.count('kms_tags', {status:1});
        return count;
    }

    /**
     * 便签添加
     * @param name
     * @returns {Promise<void>}
     */
    async addTag(name) {
        const result = await this.app.mysql.insert('kms_tags', { name });

        return result.affectedRows === 1;
    }
}

module.exports = TagsService;