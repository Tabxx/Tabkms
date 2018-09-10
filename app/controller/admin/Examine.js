'use strict';
const adminController = require('./AdminBase');

class ExamineController extends adminController {
    /**
     * 文档审核
     * @returns {Promise<void>}
     */
    async index() {
        this.init();

        await this.ctx.render('Examine/index.tpl');
    }

    /**
     * 文档分页
     * @returns {Promise<void>}
     */
    async page(){
        this.init();
        const ctx = this.ctx;

        let page = ctx.query.page;
        let limit = ctx.query.limit;

        const docs = await ctx.service.knowledge.getAllKonwledges(page, limit);
        const count = await ctx.service.knowledge.getKonwsCount();

        if (docs !== null) {
            ctx.body = {
                "code": 0,
                "msg": '',
                "data": docs,
                count
            };
        } else {
            ctx.body = {
                'msg': '数据获取异常！'
            };
        }
    }

    /**
     * 文档详情
     * @returns {Promise<void>}
     */
    async detail() {
        await this.init();
        const ctx = this.ctx;

        // 文档ID
        const kid = ctx.helper.escape(ctx.query.id);
        // 文档详情
        const content = await ctx.service.knowledge.getDetail(kid);
        // 分类情况
        const classify = await ctx.service.classify.getAllClass();

        await ctx.render('Examine/detail.tpl', { detail:content, classify });
    }

    /**
     * 文档状态更新（审核通过）
     * @returns {Promise<void>}
     */
    async updateDoc(){
        await this.init();
        const ctx = this.ctx;

        if(ctx.request.method === "POST"){
            const classId = ctx.request.body.classid;
            const kid = ctx.request.body.kid;

            const result = await this.service.examine.updateDoc(kid, classId);

            this.success('/examine','添加成功！', result);
        }
    }

}

module.exports = ExamineController;
