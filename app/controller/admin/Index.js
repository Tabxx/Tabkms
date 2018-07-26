'use strict';
const adminController = require('./AdminBase');

class IndexController extends adminController {
    /**
     * 管理员首页
     * @returns {Promise<void>}
     */
    async index() {
        const ctx = this.ctx;
        await this.init();

        await ctx.render('Index/index.tpl');
    }
}

module.exports = IndexController;
