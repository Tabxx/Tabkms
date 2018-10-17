'use strict';

module.exports = appInfo => {
    const config = exports = {
        // 模板引擎
        view: {
            defaultViewEngine: 'nunjucks',
            mapping: {
                '.tpl': 'nunjucks',
            },
        },
        // 数据库配置
        mysql: {
            client: {
                host: '120.78.173.86',
                port: '3306',
                user: 'root',
                password: 'root',
                database: 'tabkms',
            },
            app: true,
            agent: false,
        },
        development: {
            reloadPattern: ['**', '!**/*.ts'],
        },
        // session设置
        session: {
            key: 'user',
            maxAge: 3600 * 100 * 1,
            httpOnly: true,
            encrypt: true,
        },
        // 附件设置
        multipart: {
            fileExtensions: ['.doc', '.docx', '.xlsx'],
        },
        security: {
            csrf: {
                headerName: 'x-csrf-token', // 通过 header 传递 CSRF token 的默认字段为 x-csrf-token
            },
        },
    };

    // use for cookie sign key, should change to your own and keep security
    config.keys = appInfo.name + '_1525703255302_901';
    // 中间件
    config.middleware = ['auth', 'slider'];

    return config;
};