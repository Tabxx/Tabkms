const baseController = require('./AdminBase');

class StudyController extends baseController {

    async addAblum() {
        this.init();
        const ctx = this.ctx;

        const classify = await ctx.service.classify.getClass();

        await ctx.render('Learning/addAblum.tpl', { classify });
    }

}

module.exports = StudyController;