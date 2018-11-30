'use strict';
const baseController = require('./AdminBase');

class UserController extends baseController {

    async userClass() {
        const {
            ctx,
            service
        } = this;

        ctx.body = await service.user.getUserClass();
    }
}

module.exports = UserController;