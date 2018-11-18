'use strict';

const fs = require('fs');
const path = require('path');
const sendToWormhole = require('stream-wormhole');
const awaitWriteStream = require('await-stream-ready').write;
const { Controller } = require('egg');

class UploadController extends Controller {

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
            "code": 0,
            "msg": "",
            "data": {
                "src": 'http://' + ctx.request.host + '/public/upload/img/' + filename,
            }
        }
    }
}

module.exports = UploadController;