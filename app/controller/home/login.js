'use strict';

const Controller = require('egg').Controller;

class LoginController extends Controller {

    /**
     * 登录界面
     * @returns {Promise<void>}
     */
    async index() {
        let result = {
            code: 1,
            msg: '',
            result: ''
        };
        await this.ctx.render('login/index.tpl', result);
    }

    /**
     * 登录操作
     * @returns {Promise<void>}
     */
    async login() {
        const { ctx, service } = this;

        const username = ctx.helper.escape(ctx.request.body.username);
        const password = ctx.helper.escape(ctx.request.body.password);

        // 登录成功则返回用户信息
        const user = await service.login.login(username, password);

        if (user === null) {
            ctx.body = {
                    code: 0,
                    msg: '用户名或者密码错误！',
                    result: false
                }
                // await ctx.render('login/index.tpl', result);
        } else {

            ctx.session.user = {
                username: user.username,
                job: user.job,
                uid: user.id
            };

            let result = null;

            if (user.type === 1) {
                // await ctx.redirect('/Index');
                result = {
                    code: 0,
                    msg: '管理员登陆成功',
                    result: '/Index'
                }
            } else {
                // await ctx.redirect('home/index');
                result = {
                    code: 0,
                    msg: '登陆成功',
                    result: '/'
                }
            }

            ctx.body = result;
        }
    }

    /**
     * 退出登录
     * @returns {Promise<void>}
     */
    async logout() {
        const { ctx } = this;

        ctx.session.user = null;
        await ctx.redirect('login/index');
    }

    // /**
    //  * 管理员登录界面
    //  * @returns {Promise<void>}
    //  */
    // async adminIndex() {
    //     await this.ctx.render('login/adminLogin.tpl', { "errMsg": ' '});
    // }
    //
    // /**
    //  * 管理员登录
    //  * @returns {Promise<void>}
    //  */
    // async adminLogin() {
    //     const ctx = this.ctx;
    //
    //     const username = ctx.helper.escape(ctx.request.body.username);
    //     const password = ctx.helper.escape(ctx.request.body.password);
    //
    //     // 登录成功则返回用户信息
    //     const user = await ctx.service.login.login(username, password);
    //
    //     if (user.user === null) {
    //         const res = {
    //             errMsg: '用户名或者密码错误！',
    //             username,
    //             password,
    //         };
    //         await this.ctx.render('login/adminLogin.tpl', res);
    //     } else {
    //         ctx.session.user = user.user;
    //         await this.ctx.redirect('/Index');
    //     }
    // }
}

module.exports = LoginController;