'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
    const { router, controller } = app;
    router.get('/', controller.home.home.index);
    const auth = app.middleware.auth();

    // 管理员错误提醒
    router.get('/adminError', controller.admin.adminBase.errorMsg);
    // 用户登录和退出
    router.get('/login', controller.home.login.index);
    router.post('/login', controller.home.login.login);
    router.get('/logout', controller.home.login.logout);

    // 管理员登录
    router.get('/adminlogin', controller.admin.login.adminIndex);
    router.post('/adminLogin', controller.admin.login.adminLogin);
    router.get('/adminLogout', controller.admin.login.adminLogout);

    // 管理员首页
    app.router.get('/Index', auth, controller.admin.index.index);

    // 分类管理
    router.get('/classify', auth, controller.admin.classify.manage);

    // 系统设置-前台菜单管理
    router.get('/homemenu', auth, controller.admin.setup.menuManage);
    router.get('/homemenu/add', auth, controller.admin.setup.addMenu);
    router.post('/homemenu/add', auth,  controller.admin.setup.addMenu);
    router.get('/homemenu/edit', auth, controller.admin.setup.editMenu);
    router.post('/homemenu/update', auth, controller.admin.setup.editMenu);

    // 系统设置-前台菜单管理
    router.get('/adminMenu', auth, controller.admin.setup.menuManage);
    router.get('/allMenu', auth, controller.admin.setup.getAllMenu);

    // 爬虫
    router.get('/reptilian',controller.admin.reptilian.Index);
    router.post('/reptilian', controller.admin.reptilian.Index);
    router.get('/reptilian/lists', controller.admin.reptilian.repMain);
    router.get('/reptilian/detail',controller.admin.reptilian.getDetail);
    router.post('/reptilian/add',controller.admin.reptilian.addKnow);
    router.get('/reptilian/page',controller.admin.reptilian.repPage);

    // 个人中心
    router.get('/personalzone', controller.home.personal.Index);

    // 知识上传
    router.get('/uploadKnowledge', controller.home.personal.uploadKnowledge);

    // 知识附件上传
    router.post('/addKnowledge', controller.home.knowledge.addKnowledge);

    // 图片上传
    router.post('/uploadImg', controller.home.knowledge.uploadImg);

    //知识详情
    router.get('/knowdetail', controller.home.knowledge.detail);

    // 知识标签
    router.get('/tags', auth,controller.admin.tags.index);
    router.get('/tags/add', auth,controller.admin.tags.add);
    router.post('/tags/add', auth,controller.admin.tags.add);
    router.get('/pageTags', auth,controller.admin.tags.pageTags);

    // 文件上传
    router.post('/upload', controller.home.knowledge.upload);

    // 部门管理
    router.get('/department', auth,controller.admin.department.index);
    router.get('/department/add',auth, controller.admin.department.add);
    router.post('/department/add', auth,controller.admin.department.add);

    // 文档审核
    router.get('/examine', auth,controller.admin.examine.index);
    router.get('/examinePage', auth,controller.admin.examine.page);
    router.get('/examine/detail', auth,controller.admin.examine.detail);
    router.post('/examine/update', auth,controller.admin.examine.updateDoc);

    // 分类列表
    router.get('/classLists', auth, controller.home.classify.lists);
    router.get('/getKnowlist', auth, controller.home.classify.listsJson);

    // 关键词搜素
    router.get('/search', controller.home.search.search);

    // 知识社区
    router.get('/community', controller.home.community.index);
    router.post('/putQuestion', controller.home.community.putQuestion);
    router.get('/questiondetail', controller.home.community.detail);
    router.post('/Community/answer', controller.home.community.answer);
    router.post('/Community/best', controller.home.community.bestAnswer);

    // 添加学习专辑
    router.get('/learning/addAblum', controller.admin.study.addAblum);

    // 知识圈
    router.get('/circle', controller.home.circle.index);
    router.get('/score', controller.home.circle.score);
    router.get('/circleinformation', controller.home.circle.information);
    router.get('/circle/detail', controller.home.circle.detail);
};
