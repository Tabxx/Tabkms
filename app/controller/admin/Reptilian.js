'use strict';

const adminBase = require('./AdminBase');

class ReptilianController extends adminBase {

    /**
     * 爬虫页面
     * @returns {Promise<void>}
     */
    async Index() {
        const {
            ctx,
            service
        } = this;

        if (ctx.request.method === "GET") {
            await ctx.render('Reptilian/index.tpl');
        } else {

            // 爬虫处理
            const postData = ctx.request.body;
            await service.reptilian.getData(postData.url, postData.rule, postData.element);
            await ctx.render('Reptilian/animation.tpl');
        }
    }

    /**
     * 爬虫处理
     * @returns {Promise<void>}
     */
    async repMain() {
        const {
            ctx
        } = this;
        await ctx.render('Reptilian/list.tpl');
    }

    /**
     * 爬虫数据分页
     * @returns {Promise<void>}
     */
    async repPage() {
        const {
            ctx,
            service
        } = this;
        const {
            page = 0, limit = 0
        } = ctx.query;

        const lists = await service.reptilian.getLists(page, limit);
        const count = await service.reptilian.getDatasCount();

        if (lists !== null) {
            ctx.body = {
                "code": 0,
                "msg": '',
                "data": lists,
                count
            };
        } else {
            ctx.body = {
                'msg': '数据获取异常！'
            };
        }
    }

    /**
     * 单条爬虫数据的详情
     */
    async getDetail() {
        const {
            ctx,
            service
        } = this;

        // get中获取id
        const id = ctx.helper.escape(ctx.query.id);
        const detail = await service.reptilian.getDetail(id);

        if (detail !== null) {

            // 分类信息
            const classify = await service.classify.getAllClass();
            await ctx.render('Reptilian/detail.tpl', {
                detail,
                classify
            });
        } else {
            ctx.body = "未知错误！";
        }
    }

    /**
     * 知识添加到数据库
     * @returns {Promise<void>}
     */
    async addKnow() {
        const {
            ctx,
            service
        } = this;
        // 获取参数
        const kid = ctx.helper.escape(ctx.request.body.kid);
        const classId = ctx.helper.escape(ctx.request.body.classid);
        const detail = await service.reptilian.getDetail(kid);

        let knowdata = {
            title: detail.title,
            classids: classId,
            tags: ctx.request.body.tags,
            content: detail.comment,
            enclosure: '',
            power: 0,
            id: ctx.session.user.uid,
        };


        const result = await service.knowledge.addKnowledge(knowdata, 1);
        this.success('/reptilian/lists', '添加成功！', result);
    }

    /**
     * 
     * 删除爬虫数据
     * @memberof ReptilianController
     */
    async delWebData() {
        const {
            ctx,
            service
        } = this;
        const id = ctx.helper.escape(ctx.query.id);

        let result = await service.reptilian.delWebData(id);

        if (!result.error) {
            ctx.body = {
                errorcode: 0,
                msg: '删除成功！',
                result: result.result
            }
        } else {
            ctx.body = {
                errorcode: 0,
                msg: '删除失败！',
                result
            }
        }
    }
}


module.exports = ReptilianController;