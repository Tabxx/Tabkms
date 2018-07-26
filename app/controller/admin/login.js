'use strict';

const adminBase = require('./AdminBase');

class LoginController extends adminBase {

    /**
     * 管理员登录界面
     * @returns {Promise<void>}
     */
    async adminIndex() {
        await this.ctx.render('login/adminLogin.tpl', { errMsg: ' '});
    }

    /**
     * 管理员登录
     * @returns {Promise<void>}
     */
    async adminLogin() {
        const ctx = this.ctx;

        const username = ctx.helper.escape(ctx.request.body.username);
        const password = ctx.helper.escape(ctx.request.body.password);

        // 登录成功则返回用户信息
        const user = await ctx.service.login.login(username.trim(), password);

        if (user.user === null) {
            const res = {
                errMsg: '用户名或者密码错误！',
                username,
                password,
            };
            await this.ctx.render('login/adminLogin.tpl', res);
        } else {
            ctx.session.user = ctx.helper.toArr(user.user);
            await this.ctx.redirect('/Index');
        }
    }
}

module.exports = LoginController;