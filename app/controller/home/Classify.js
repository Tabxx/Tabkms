'use strict';
const Controller = require('egg').Controller;

class ClassifyController extends Controller {

    /**
     * 分类知识列表
     * @returns {Promise<void>}
     */
    async lists() {
        const ctx = this.ctx;

        // 分类id获取
        const type = ctx.helper.escape(ctx.request.query.type);
        const lists = await ctx.service.classify.getLists(type);
        await ctx.render('Classify/lists.tpl', { lists });
    }

    async listsJson() {
        const ctx = this.ctx;

        // 分类id获取
        const type = ctx.helper.escape(ctx.request.query.type);
        const lists = await ctx.service.classify.getLists(type);
        ctx.body = {
            code: 1,
            lists
        }
    }
}

module.exports = ClassifyController;
