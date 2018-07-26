const Service = require('egg').Service;
const md5 = require('md5');

class LoginService extends Service {

    /**
     * 用户登录
     * @param username
     * @param password
     * @returns {Promise<*>} 用户信息
     */
    async login(username, password) {
        const user = await this.app.mysql.get('kms_users', { password: md5(password), username });
        return { user };
    }
}

module.exports = LoginService;