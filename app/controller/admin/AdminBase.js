'use strict';
const { Controller } = require('egg');

class AdminBaseController extends Controller {

    /**
     * 控制器初始化
     * @returns {Promise<void>}
     */
    async init() {
        await this.getAllMenu();
    }

    /**
     * 判断session是否为空
     * @returns {Promise<null>}
     */
    async userSession() {
        if (this.ctx.session.user === undefined) {
            await this.ctx.redirect('/adminlogin');
            return null;
        } else {
            this.ctx.app.locals = { username: this.ctx.session.user.username };
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
     * 后台菜单获取
     * @returns {Promise<void>}
     */
    async getAllMenu() {
        const menus = await this.ctx.service.setup.getAllMenu();
        this.ctx.app.locals = { adminMenu: menus };
    }

    /**
     * 错误信息返回
     * @param errMsg
     * @returns {Promise<void>}
     */
    async errorMsg(errMsg) {
        thix.ctx.render('public/admin/error.tpl', {errMsg});
    }

}

module.exports = AdminBaseController;