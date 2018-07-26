'use strict';
const { Controller } = require('egg');

class BaseController extends Controller {

    /**
     * 控制器初始化
     * @returns {Promise<void>}
     */
    async init(){
        await this.getMenu();
    }

    /**
     * 用户session判断
     * @returns {Promise<void>}
     */
    async userSession() {
        if (this.ctx.session.user === undefined) {
            await this.ctx.redirect('/login');
        } else {
            this.ctx.app.locals = {
                username: this.ctx.session.user.username,
                uid: this.ctx.session.user.id,
                user: this.ctx.session.user
            };
        }
    }

    /**
     * 成功返回json数据
     * @param url
     * @param msg
     * @param code
     * @returns {Promise<void>}
     */
    async success(url = '', msg = '', code = 1) {
        this.ctx.body = {
            url, msg, code
        };
    }

    /**
     * 前端菜单
     * @returns {Promise<void>}
     */
    async getMenu(){
        const menus = await this.ctx.service.setup.getHomeMenu(0);
        this.ctx.app.locals = { homeMenu: menus };
    }

}

module.exports = BaseController;