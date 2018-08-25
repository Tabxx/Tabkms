module.exports = options => {
    return function* slider(ctx, next) {
        yield next;

        const menus = ctx.service.setup.getAllMenu();
        ctx.app.locals = { adminMenu: menus };
    };
};