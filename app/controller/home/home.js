'use strict';
const baseController = require('./base')

class HomeController extends baseController {

    async index() {
        let middlewares = this.app.middlewares;
        await middlewares.auth();

        const classify = await this.ctx.service.classify.getClass();
        await this.ctx.render('Home/index.tpl', { classify });
    }
}

module.exports = HomeController;
