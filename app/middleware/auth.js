module.exports = (options, app) => {
    return async function auth(ctx, next) {
        let urltype = ctx.request.url != '/login' && ctx.request.url != '/adminlogin';
        // 拦截器
        if (!ctx.session.user && urltype) {
            await ctx.redirect('/login');
            return;
        }
        await next();
    };
};