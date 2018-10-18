module.exports = options => {
    return async function auth(ctx, next) {

        // 拦截器
        if (!ctx.session.user && ctx.request.url !== '/login' && ctx.request.url !== '/adminlogin') {
            const type = ctx.session.usertype;
            console.log("session失效后type的值为", type);
            // 若为管理员返回管理员登录界面
            if (type) {
                ctx.redirect('/adminlogin');
            } else {
                ctx.redirect('/login', 'login.index');
            }
        }
        await next();
    };
};