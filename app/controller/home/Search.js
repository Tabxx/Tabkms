'use strict';
const baseController = require('./base')

class SearchController extends baseController {

    /**
     * 关键词搜索
     * @returns {Promise<void>}
     */
    async search() {
        await this.init();
        const ctx = this.ctx;
        // 获取关键词
        const keyword = ctx.helper.escape(ctx.request.query.keyword);

        const searchResult = await ctx.service.search.search(keyword);
        await ctx.render("Search/result.tpl", { searchResult });
    }
}

module.exports = SearchController;
