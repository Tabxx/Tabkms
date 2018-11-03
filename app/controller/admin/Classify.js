'use strict';
const baseController = require('./AdminBase');

class ClassifyController extends baseController {

    async manage() {
        const {
            ctx
        } = this;
        await ctx.render('Classify/manage.tpl');
    }

    /**
     * 内容管理分页数据
     */
    async knowlist() {
        const {
            service,
            ctx
        } = this;

        const {
            page = 0, limit = 0
        } = ctx.query;

        let knows = await service.knowledge.getAllKonwledges(page, limit);
        let count = await service.knowledge.getKonwledgeCount();

        if (knows !== null) {
            ctx.body = {
                "code": 0,
                "msg": '',
                "data": knows,
                count
            };
        } else {
            ctx.body = {
                'msg': '数据获取异常！'
            };
        }
    }

    /**
     *  管理员-分类管理，树形菜单
     */
    async tree() {
        const ctx = this;

        let classes = await ctx.service.classify.getAllClass();
        let tree = [];

        for (let item of classes) {
            item.title = item.name;
            item.status = 1;
            tree.push(item);
        }

        this.ctx.body = {
            code: 0,
            msg: '',
            result: tree
        };
    }

    /**
     * 分类列表
     * @memberof ClassifyController
     */
    async list() {
        const { ctx, app } = this;

        await ctx.render('Classify/tree.tpl');
    }

    async addClass() {
        const { ctx, app, service } = this;

        const reqType = ctx.request.method;

        if (reqType == 'POST') {
            let { classname, pid = 0, type, id } = ctx.request.body;
            let result = {};
            let msg = '';

            switch (type) {
                case 'add':
                    {
                        result = await service.classify.addClass(classname, pid);
                        msg = '添加成功';
                        break;
                    }
                case 'edit':
                    {
                        result = await service.classify.editClass(classname, id);
                        msg = '修改成功';
                        break;
                    }
                case 'del':
                    {
                        result = await service.classify.delClass(id);
                        msg = '删除成功';
                        break;
                    }
            }

            let code = result ? 0 : 1;
            ctx.body = {
                code,
                msg,
                result
            }
        }
    }
}

module.exports = ClassifyController;