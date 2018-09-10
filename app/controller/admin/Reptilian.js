'use strict';

const adminBase = require('./AdminBase');

class ReptilianController extends adminBase {

    /**
     * 爬虫页面
     * @returns {Promise<void>}
     */
    async Index() {
        this.init();

        if(this.ctx.request.method === "GET"){
            await this.ctx.render('Reptilian/index.tpl');
        } else {

            // 爬虫处理
            const postData = this.ctx.request.body;
            await this.ctx.service.reptilian.getData(postData.url, postData.rule, postData.element);
            await this.ctx.render('Reptilian/animation.tpl');
        }
    }

    /**
     * 爬虫处理
     * @returns {Promise<void>}
     */
    async repMain() {
        this.init();

        const lists = await this.ctx.service.reptilian.getLists();
        await this.ctx.render('Reptilian/list.tpl', { lists });
    }

    /**
     * 单条爬虫数据的详情
     */
    async getDetail() {
        this.userSession();
        const ctx = this.ctx;

        // get中获取id
        const id = ctx.helper.escape(ctx.query.id);
        const detail = await ctx.service.reptilian.getDetail(id);

        if (detail !== null) {

            // 分类信息
            const classify = await ctx.service.classify.getAllClass();
            await ctx.render('Reptilian/detail.tpl', { detail, classify });
        } else {
            ctx.body = "未知错误！";
        }
    }

    /**
     * 知识添加到数据库
     * @returns {Promise<void>}
     */
    async addKnow() {
        this.init();
        const ctx = this.ctx;
        console.log(this.ctx.request.body);
        // 获取参数
        const kid = ctx.helper.escape(ctx.request.body.kid);
        const classId = ctx.helper.escape(ctx.request.body.classid);
        const detail = await ctx.service.reptilian.getDetail(kid);

        let knowdata = {
            title: detail.title,
            classids: classId,
            tags: '',
            content: detail.comment,
            enclosure: '',
            power: 0,
            id: ctx.session.user.id,
        };


        const result = await ctx.service.knowledge.addKnowledge(knowdata);
        this.success('/reptilian/lists','添加成功！', result);
    }
}


module.exports = ReptilianController;