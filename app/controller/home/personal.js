'use strict';
const baseController = require('./base');

class PersonalController extends baseController {
    /**
     * 个人中心主页
     * @returns {Promise<void>}
     */
    async Index() {
        const ctx = this.ctx;

        if (ctx.request.method === "GET") {
            const user = ctx.session.user;

            // 我的知识
            const knowledges = await ctx.service.knowledge.getUserKonwledges(user.uid);
            await ctx.render('Personal/Index.tpl', {
                knowledges,
                user
            });
        }
    }

    /**
     * 上传知识
     * @returns {Promise<void>}
     */
    async uploadKnowledge() {

        this.init();
        const ctx = this.ctx;

        if (ctx.request.method === "GET") { // get渲染页面

            // 知识分类
            const classIfy = await ctx.service.classify.getAllClass();

            // 知识标签
            const tags = await ctx.service.tags.getTags();

            // 部门信息
            const department = await ctx.service.department.index();

            // 用户id
            const uid = ctx.session.user.id;

            await ctx.render('Personal/uploadKnowledge.tpl', {
                classIfy,
                tags,
                department,
                uid
            });
        }
    }
}

module.exports = PersonalController;