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
    async page() {
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

        await ctx.render('Examine/detail.tpl', { detail: content, classify });
    }

    /**
     * 文档状态更新（审核通过）
     * @returns {Promise<void>}
     */
    async updateDoc() {
        const { ctx, service } = this;

        if (ctx.request.method === "POST") {
            const classId = ctx.request.body.classid;
            const kid = ctx.request.body.kid;

            const result = await service.examine.updateDoc(kid, classId);

            if (!result) {
                ctx.body = {
                    errorcode: 0,
                    msg: '导入知识库失败！',
                    result: null
                }
            } else {
                ctx.body = {
                    errorcode: 0,
                    msg: '导入成功！',
                    result
                }
            }
        }
    }

    /**
     * 文档审核未通过
     */
    async nothrough() {
        const { ctx, service } = this;

        const kid = ctx.request.body.kid;

        const result = service.examine.editDocStatus(kid, -1);

        if (!result) {
            ctx.body = {
                errorcode: 0,
                msg: '修改失败！',
                result: null
            }
        } else {
            ctx.body = {
                errorcode: 0,
                msg: '文档审核未通过，已返回给发布者',
                result
            }
        }
    }

}

module.exports = ExamineController;