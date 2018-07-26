'use strict';
const AdminBaseController = require('./AdminBase');

class SetupController extends AdminBaseController {

    /**
     * 菜单管理
     * @returns {Promise<void>}
     */
    async menuManage() {
        this.init();
        const type = this.ctx.query.type;
        const menus = await this.ctx.service.setup.getMenu(type);

        await this.ctx.render('/System/menuManage.tpl', { menus, type });
    }

    /**
     * 添加菜单页面
     * @returns {Promise<void>}
     */
    async addMenu(){
        const ctx = this.ctx;

        if (ctx.request.method === "GET") {   // get方式渲染界面
            const type = ctx.query.type;
            const menus = await ctx.service.setup.getMenu(type);
            await ctx.render('/System/addMenu.tpl', { menus, type });
        } else {

            const newMenu = ctx.request.body;

            // 表单验证
            try {
                ctx.validate({
                    name: { type: 'string' },
                    pid: { type: 'string' },
                    url: { type: 'string' }
                }, ctx.request.body);

                // service添加菜单
                const res = await ctx.service.setup.addMenu(newMenu);

                if(res.result){
                    this.success(`/homemenu?type=${newMenu.type}`, '菜单添加成功！', 1);
                    this.init();
                } else {
                    this.success('/', '菜单添加失败！', 0);
                }

            } catch (err) {
                ctx.body = { code: 0, msg: '提交数据存在错误，请重新提交！' };
                return;
            }
        }
    }

    /**
     * 编辑菜单
     * @returns {Promise<void>}
     */
    async editMenu() {

        const ctx = this.ctx;

        // get请求输出菜单信息
        if (ctx.request.method === "GET") {

            const id = ctx.helper.escape(ctx.query.id);

            // id不存在
            if (!id) {
                ctx.body = {
                    code: 0,
                    msg: '非法操作！'
                };
            } else {
                const info = await ctx.service.setup.editMenu(id);
                await ctx.render('/System/editMenu.tpl', { info });
            }
        } else {
            const newMenu = ctx.request.body;

            // 表单验证
            try {
                ctx.validate({
                    name: { type: 'string' },
                    pid: { type: 'string' },
                    url: { type: 'string' }
                }, ctx.request.body);

                // service更新菜单信息
                const res = await ctx.service.setup.updateMenu(newMenu);

                if(res.result){
                    this.success('/homemenu', '菜单添加成功！', 1);
                } else {
                    this.success('/', '菜单添加失败！', 0);
                }

            } catch (err) {
                ctx.logger.warn(err.errors);
                ctx.body = { code: 0, msg: '提交数据存在错误，请重新提交！' };
                return;
            }
        }
    }



}

module.exports = SetupController;