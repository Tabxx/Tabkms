const baseController = require('./base');

class CommunityController extends baseController {

    /**
     * 知识社区
     * @returns {Promise<void>}
     */
    async index() {
        await this.init();
        const ctx = this.ctx;

        // 所有提问
        const questions = await ctx.service.community.index();

        // 我的提问
        const myques = await ctx.service.community.myQuestion(ctx.session.user.id);
        await ctx.render('Community/index.tpl', { questions, myques });
    }

    /**
     * 提问
     * @returns {Promise<void>}
     */
    async putQuestion(){
        await this.init();
        const ctx = this.ctx;

        const question = ctx.request.body;
        try {
            ctx.validate({
                title: {type: 'string'},
                content: {type: 'string'}
            }, ctx.request.body);

            const result = await ctx.service.community.putQuestion(question);

            if(result){
                await ctx.redirect('/community');
            }

        } catch (e) {
            console.log(e);
        }
    }

    /**
     * 问题详情
     * @returns {Promise<void>}
     */
    async detail(){
        await this.init();
        const ctx = this.ctx;

        const id = ctx.helper.escape(ctx.request.query.id);
        const detail = await ctx.service.community.detail(id);
        // 回答
        const answers = await ctx.service.community.getAnswer(id);

        // 最佳回答
        const best = await ctx.service.community.best(parseInt(id));

        if(detail){
            // 浏览数+1
            await ctx.service.community.addBrowseNum(id);

        }

        await ctx.render('Community/detail.tpl', { detail, answers, best });
    }

    /**
     * 回答问题
     * @returns {Promise<void>}
     */
    async answer(){
        await this.init();
        const ctx = this.ctx;

        try{
            ctx.validate({
                answer: {type: 'string'},
            }, ctx.request.body);

            const answer = ctx.request.body;

            const result = await ctx.service.community.answer(answer);
            if(result){
                this.success('', '评论成功', 1);
            } else {
                this.success('', '评论失败', 0);
            }

        } catch (e) {
            console.log(e);
        }
    }

    /**
     * 最佳回答
     * @returns {Promise<void>}
     */
    async bestAnswer(){
        this.init();
        const ctx = this.ctx;

        const data = ctx.request.body;
        const result = ctx.service.community.bestAnswer(data);

        if(result){
            this.success('', '设置成功', 1);
        }
    }


}

module.exports = CommunityController;