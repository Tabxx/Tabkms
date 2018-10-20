'use strict';
const baseController = require('./base');

class PersonalController extends baseController {
    /**
     * 个人中心主页
     * @returns {Promise<void>}
     */
    async Index() {
        const { ctx, service } = this;

        if (ctx.request.method === "GET") {
            const user = ctx.session.user;

            // 我的知识
            const knowledges = await service.knowledge.getUserKonwledges(user.uid, [-2, 0, 1]);

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
        const { ctx, service } = this;

        if (ctx.request.method === "GET") { // get渲染页面

            // 知识分类
            const classIfy = await service.classify.getAllClass();

            // 知识标签
            const tags = await service.tags.getTags();

            // 部门信息
            const department = await service.department.index();

            // 用户id
            const uid = ctx.session.user.uid;

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