module.exports = options => {
    return function* auth(next) {
        if(!this.session.user && this.request.url != '/adminlogin'){
            this.redirect('/adminlogin', 'login.adminLogin');
        }
        yield next;
    };
};