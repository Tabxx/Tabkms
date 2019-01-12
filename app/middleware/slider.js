module.exports = (options, app) => {
    return async function (ctx, next) {
        // 主页侧边栏
        const HOME_MENU = await ctx.service.setup.getHomeMenu(0);
        /// 管理员侧边栏
        const ADMIN_MENU = await ctx.service.setup.getAllMenu();

        ctx.locals = {
            adminMenu: ADMIN_MENU,
            homeMenu: HOME_MENU
        };
        await next();
    };
};