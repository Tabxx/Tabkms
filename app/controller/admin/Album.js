'use strict';
const baseController = require('./AdminBase');

class AlbumController extends baseController {
    /**
     * 知识专辑管理首页
     * 
     * @memberof AlbumController
     */
    async index() {
        const { ctx, service } = this;
        await ctx.render('Album/index.tpl');
    }

    /**
     * 新增知识专辑
     *
     * @memberof AlbumController
     */
    async addAlbum() {
        const { ctx, service } = this;
        await ctx.render('Album/add.tpl');
    }

    /**
     * 章节知识列表
     *
     * @memberof AlbumController
     */
    async list() {
        const { ctx, service } = this;
        const classify = await service.classify.getClass();

        await ctx.render('Album/list.tpl', {
            classify
        });
    }
}

module.exports = AlbumController;