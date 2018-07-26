'use strict';
const AdminBaseController = require('./AdminBase');

class TagsController extends AdminBaseController {

    /**
     * 标签管理
     * @returns {Promise<void>}
     */
    async index() {
        this.init();

        await this.ctx.render('Tags/index.tpl');
    }

    /**
     * 添加标签
     * @returns {Promise<void>}
     */
    async add() {
        const ctx = this.ctx;

        if (ctx.request.method === 'GET') {
            await ctx.render('Tags/add.tpl');
        } else {

           const nameData = this.ctx.request.body.name;

            try {
                ctx.validate({
                    name: { type: 'string' },
                });

                const name = ctx.helper.escape(nameData);

                // service添加到数据库，返回插入信息
                const result = ctx.service.tags.addTag(name);

                if(result){
                    this.success('/tags', '标签添加成功！',1);
                } else {
                    this.success('', '标签添加失败！', 0);
                }

            } catch (e) {
                console.log(e);
                ctx.body = { code: 0, msg: '提交数据存在错误，请重新提交！' };
                return;
            }
        }
    }

    /**
     * 标签分页
     */
    async pageTags(){
        const ctx = this.ctx;

        let page = ctx.query.page;
        let limit = ctx.query.limit;

        const tags = await ctx.service.tags.getTags(page, limit);
        const count = await ctx.service.tags.getTagsCount();

        if (tags !== null) {
            ctx.body = {
                code: 0,
                msg: '',
                count,
                data: tags,
            }
        } else {
            ctx.body = {
                'msg': '数据获取异常！',
            }
        }
    }
}

module.exports = TagsController;