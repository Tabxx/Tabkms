'use strict';
const Controller = require('egg').Controller;

class ClassifyController extends Controller {

    /**
     * 分类知识列表
     * @returns {Promise<void>}
     */
    async lists() {
        const {
            ctx,
            app,
            service
        } = this;

        // 分类id获取
        const type = ctx.helper.escape(ctx.request.query.type);
        // 分类结果
        const lists = await service.classify.getLists(type);
        // 同级分类
        const similar = await service.classify.getSimilar(type);
        // 获取标签
        const tags = await service.tags.getTags(1, 10);

        await ctx.render('Classify/lists.tpl', {
            lists,
            similar,
            typeid: type,
            tags
        });
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