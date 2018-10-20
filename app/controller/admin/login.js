'use strict';

const adminBase = require('./AdminBase');

class LoginController extends adminBase {

    /**
     * 管理员登录界面
     * @returns {Promise<void>}
     */
    async adminIndex() {
        await this.ctx.render('login/adminLogin.tpl');
    }

    /**
     * 管理员登录
     * @returns {Promise<void>}
     */
    async adminLogin() {
        const {
            ctx,
            service
        } = this;
        const reqbody = ctx.request.body;

        // 获取body内的用户名和密码
        const [username, password] = [
            ctx.helper.escape(reqbody.username.trim()),
            ctx.helper.escape(reqbody.password.trim())
        ];

        // 登录成功则返回用户信息
        const user = await service.login.login(username, password);

        if (user.user === null) {
            const res = {
                "code": 0,
                "msg": '用户名或者密码错误！',
                "result": {
                    username
                }
            };

            await ctx.render('login/adminLogin.tpl', {
                res
            });
        } else if (user.user.type != 1) {
            const res = {
                "code": 0,
                "msg": '您不是管理员，无法登陆管理平台！',
                "result": {
                    username
                }
            };

            await ctx.render('login/adminLogin.tpl', {
                res
            });
        } else {
            const userInfo = ctx.helper.toArr(user.user);

            ctx.session.admin = {
                "username": userInfo.username,
                "uid": userInfo.id
            }
            await ctx.redirect('/Index');
        }
    }

    /**
     * 管理员退出
     */
    async adminLogout() {
        const { ctx } = this;

        //清除session
        ctx.session = null;
        await ctx.render('login/adminLogin.tpl');
    }
}

module.exports = LoginController;