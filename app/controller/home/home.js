'use strict';
const baseController = require('./base');

class HomeController extends baseController {

    /**
     * 首页
     * @returns {Promise<void>}
     */
    async index() {
        let middlewares = this.app.middlewares;


        await middlewares.auth();
        // 获取知识分类
        const classify = await this.ctx.service.classify.getClass();

        await this.ctx.render('Home/index.tpl', { classify });
    }
}

module.exports = HomeController;
