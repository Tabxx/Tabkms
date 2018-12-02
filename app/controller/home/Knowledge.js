'use strict';
const fs = require('fs');
const path = require('path');
const baseController = require('./base');
const sendToWormhole = require('stream-wormhole');
const awaitWriteStream = require('await-stream-ready').write;

class KnowledgeController extends baseController {

    /**
     * 上传知识
     * @returns {Promise<void>}
     */
    async addKnowledge() {
        const ctx = this.ctx;

        if (ctx.request.method === 'POST') {
            let knowdata = ctx.request.body;

            try {

                ctx.validate({
                    title: {
                        type: 'string'
                    },
                    classids: {
                        type: 'string'
                    },
                    tags: {
                        type: 'string'
                    },
                    content: {
                        type: 'string'
                    },
                    enclosure: {
                        type: 'array',
                        required: false
                    },
                    power: {
                        type: 'string'
                    },
                    id: {
                        type: 'string'
                    },
                });

                const result = await ctx.service.knowledge.addKnowledge(knowdata);

                if (result) {
                    await ctx.redirect('Personal/index.tpl');
                }
            } catch (e) {
                ctx.body = "上传失败！";
            }
        }

    }


    /**
     * 附件上传
     * @returns {Promise<void>}
     */
    async upload() {
        const ctx = this.ctx;

        // 1.获取到上传的文件流
        const stream = await ctx.getFileStream();

        // 2.设置上传文件名
        const filename = new Date(Date.now()).getTime() + path.extname(stream.filename).toLowerCase();

        // 3. 设置文件存放路径
        const target = path.join(this.config.baseDir, 'app/public/upload/', filename);

        // 4. 写入文件流
        const writeStream = fs.createWriteStream(target);

        // 文件ID
        let fileId = null;

        try {
            await awaitWriteStream(stream.pipe(writeStream));
            let fileUrl = '/public/upload/' + filename;
            fileId = await ctx.service.upload.upload(filename, fileUrl);
        } catch (e) {
            await sendToWormhole(stream);
            throw e;
        }

        ctx.body = {
            url: '/public/upload/' + filename,
            fileId,
            filename,
        };
    }

    /**
     * 图片上传
     * @returns {Promise<void>}
     */
    async uploadImg() {
        const ctx = this.ctx;

        // 1.获取到上传的文件流
        const stream = await ctx.getFileStream();

        // 2.设置上传文件名
        const filename = new Date(Date.now()).getTime() + path.extname(stream.filename).toLowerCase();

        // 3. 设置文件存放路径
        const target = path.join(this.config.baseDir, 'app/public/upload/img/', filename);

        // 4. 写入文件流
        const writeStream = fs.createWriteStream(target);

        // 文件ID
        let fileId = null;

        try {
            await awaitWriteStream(stream.pipe(writeStream));
            let fileUrl = '/public/upload/img' + filename;
            //fileId = await ctx.service.upload.upload(filename, fileUrl);
        } catch (e) {
            await sendToWormhole(stream);
            throw e;
        }

        ctx.body = {
            url: 'http://' + this.ctx.request.host + '/public/upload/img/' + filename,
            error: 0,
        };
    }

    /**
     * 知识详情
     * @returns {Promise<void>}
     */
    async detail() {
        const ctx = this.ctx;

        const kid = ctx.helper.escape(ctx.query.id);
        const content = await ctx.service.knowledge.getDetail(kid);
        await ctx.service.knowledge.addBrowseNum(kid);

        // 知识专辑学习添加进度
        const { aid, cid } = ctx.query;
        const uid = this.ctx.session.user.uid;
        if (aid && cid) {
            await ctx.service.album.updateProgress(aid, cid, uid);
        }

        await ctx.render('Knowledge/detail.tpl', {
            content
        });
    }

    /**
     * 管理员知识详情
     *
     * @memberof KnowledgeController
     */
    async admindetail() {
        const {
            app,
            ctx,
            service
        } = this;

        const kid = ctx.helper.escape(ctx.query.id);

        const content = await service.knowledge.getDetail(kid);
        await ctx.service.knowledge.addBrowseNum(kid);

        await ctx.render('Knowledge/admindetail.tpl', {
            detail: content
        })
    }

    /**
     * 获取指定分类的知识
     */
    async getClassKnowledge() {
        const {
            ctx,
            service
        } = this;
        const cid = ctx.query.cid;
        ctx.body = {
            code: 0,
            msg: 'success',
            data: await service.knowledge.getClassKnow(cid)
        }
    }

}

module.exports = KnowledgeController;