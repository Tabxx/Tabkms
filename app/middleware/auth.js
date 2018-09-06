module.exports = options => {
    return async function auth(ctx, next) {

        if (!ctx.session.user && ctx.request.url !== '/login') {
            ctx.redirect('/login', 'login.index');
        }

        await next();
    };
};