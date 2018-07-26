const Service = require('egg').Service;

class CompanyService extends Service {

    /**
     * 查询所有公司信息
     * @returns {Promise<*>}
     */
    async index() {
        let companys = await this.app.mysql.select('kms_company', {
            where: {status: 1},
        });

        companys = this.ctx.helper.toArr(companys);
        return companys;
    }

}

module.exports = CompanyService;