'use strict';
const baseController = require('./AdminBase');

class AlbumController extends baseController {
    /**
     * 知识专辑管理首页
     * 
     * @memberof AlbumController
     */
    async index() {
        const {
            ctx,
            service
        } = this;
        let albums = await service.album.getAlbum();
        await ctx.render('Album/index.tpl', {
            albums
        });
    }

    /**
     * 新增知识专辑
     *
     * @memberof AlbumController
     */
    async addAlbum() {
        const {
            ctx,
            service
        } = this;
        let reqType = ctx.request.method;

        if (reqType == 'GET') {

            await ctx.render('Album/add.tpl');
        } else {
            let params = ctx.request.body;
            let result = service.album.addAlbum(params);

            ctx.body = {
                code: result ? 0 : 1,
                msg: result ? '添加成功！' : '添加失败',
                result: null
            }
        }
    }

    /**
     * 章节知识列表
     *
     * @memberof AlbumController
     */
    async list() {
        const {
            ctx,
            service
        } = this;
        const classify = await service.classify.getClass();

        const data = ctx.query.data;

        if (data) {
            ctx.body = {
                code: 0,
                msg: '',
                data: classify
            };
        } else {
            await ctx.render('Album/list.tpl', {
                classify
            });
        }
    }

    /**
     * 知识专辑详情
     */
    async ablumDetail() {
        const {
            ctx,
            service
        } = this;
        // 获取专辑详情
        let detail = await service.album.getAlbumDetail(ctx.query.id);

        // 专辑-章节
        let chapters = await service.album.getAlbumChapter(detail.chapters);
        let cids = detail.chapters.split(',');
        // 排序
        chapters.sort((a, b) => {
            return cids.indexOf(a.id + '') - cids.indexOf(b.id + '');
        });

        // 章节->知识
        let knowledges = [];
        for (let item of chapters) {
            knowledges.push(await service.album.getAlbumKnow(item.knowledge));
        }
        // await service.album.getAlbumKnow


        await ctx.render('Album/detail.tpl', {
            detail,
            chapters,
            knowledges
        });
    }
}

module.exports = AlbumController;