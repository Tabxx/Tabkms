'use strict';
const baseController = require('./AdminBase');

class ClassifyController extends baseController {

    async manage() {
        await this.ctx.render('Classify/manage.tpl');
    }
}

module.exports = ClassifyController;

