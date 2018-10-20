const Service = require('egg').Service;
const md5 = require('md5');

class LoginService extends Service {

    /**
     * 用户登录
     * @param username
     * @param password
     * @returns {Promise<*>} 用户信息
     */
    async login(username = null, password = null) {

        let user = await this.app.mysql.get('kms_users', {
            username,
            "password": md5(password)
        });

        user = this.ctx.helper.toArr(user);

        return user;
    }
}

module.exports = LoginService;