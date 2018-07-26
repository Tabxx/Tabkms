'use strict';
const baseController = require('./base')

class HomeController extends baseController {
    async index() {
        await this.init();
        if (this.ctx.session.user === undefined) {
            await this.ctx.render('login/index.tpl');
        } else {
            const classify = await this.ctx.service.classify.getClass();
            await this.ctx.render('Home/index.tpl', { classify });
        }
    }
}

module.exports = HomeController;
