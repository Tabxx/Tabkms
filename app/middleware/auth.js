module.exports = options => {
    return function* auth(next) {

        if(!this.session.user && this.request.url != '/login'){
            this.redirect('/login', 'login.index');
        }

        yield next;
    };
};