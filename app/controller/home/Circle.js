const baseController = require('./base');

class CircleController extends baseController {

    /**
     * 知识圈首页
     * @returns {Promise<void>}
     */
    async index() {
        this.init();
        await this.ctx.render('Circle/index.tpl');
    }

    /**
     * 积分页
     * @returns {Promise<void>}
     */
    async score() {
        this.init();
        await this.ctx.render('Circle/score.tpl');
    }

    /**
     * 知识圈详情
     * @returns {Promise<void>}
     */
    async information() {
        this.init();
        await this.ctx.render('Circle/information.tpl');
    }

    /**
     * 话题详情
     * @returns {Promise<void>}
     */
    async detail() {
        this.init();
        await this.ctx.render('Circle/detail.tpl');
    }

    /**
     * 话题纠错
     */
    async correct() {
        await this.ctx.render('Circle/correct.tpl');
    }

    async update() {
        await this.ctx.render('Circle/update.tpl')
    }

}

module.exports = CircleController;