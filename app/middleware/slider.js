module.exports = (options, app) => {
    return async function(ctx, next) {
        // 主页侧边栏
        const menus = await ctx.service.setup.getHomeMenu(0);

        ctx.locals = { homeMenu: menus };
        await next();
    };
};