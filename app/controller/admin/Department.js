'use strict';
const adminBase = require('./AdminBase');

class DepartmentController extends adminBase {

    /**
     * 部门管理首页
     * @returns {Promise<void>}
     */
    async index() {
        this.init();

        const depart = await this.ctx.service.department.index();
        await this.ctx.render('Department/index.tpl', { depart });
    }

    /**
     * 部门添加
     * @returns {Promise<void>}
     */
    async add() {
        this.init();
        const ctx = this.ctx;

        if (ctx.request.method === 'GET') {
            const companys = await ctx.service.company.index();
            await ctx.render('Department/add.tpl', { companys });
        } else {

            const newDepart = ctx.request.body;

            // 表单验证
            try {
                ctx.validate({
                    name: { type: 'string' }
                }, ctx.request.body);

                // service添加菜单
                const result = await ctx.service.department.add(newDepart);

                if(result){
                    this.success(`/department`, '部门添加成功！', 1);
                } else {
                    this.success('/', '部门添加失败！', 0);
                }

            } catch (err) {
                ctx.body = { code: 0, msg: '提交数据存在错误，请重新提交！' };
                return;
            }
        }
    }



}

module.exports = DepartmentController;