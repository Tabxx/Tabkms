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

        let classes = await ctx.service.classify.getClass();
        let tree = [];

        for (let item of classes) {
            let menu = {};
            menu.label = item.name;
            menu.children = [];
            for (let child of item.child) {
                child = JSON.stringify(child);
                child = JSON.parse(child);

                let childmenu = {};
                childmenu.label = child.name;
                childmenu.checked = true;
                menu.children.push(childmenu);
            }
            tree.push(menu);
        }

        this.ctx.body = {
            Code: 0,
            Data: tree
        };
    }
}

module.exports = ClassifyController;