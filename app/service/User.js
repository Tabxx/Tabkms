const Service = require('egg').Service;

class UserService extends Service {

    async getUserClass() {
        const {
            app,
            ctx
        } = this;
        let sql = `select u.username, d.name, u.id as uid from kms_users u, kms_department d where u.depart_id = d.id`;
        let results = await app.mysql.query(sql);

        return ctx.helper.toArr(results);
    }
}

module.exports = UserService;