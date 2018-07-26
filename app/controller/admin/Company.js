'use strict';
const adminBase = require('./AdminBase');

class CompanyController extends adminBase {

    /**
     * 公司管理首页
     * @returns {Promise<void>}
     */
    async index() {
        this.init();

        const companys = await this.ctx.service.company.index();
        await this.ctx.render('Company/index', { companys });
    }

}

module.exports = CompanyController;