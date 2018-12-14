'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const {
    router,
    controller
  } = app;
  router.get('/', controller.home.home.index);

  // 管理员错误提醒
  router.get('/adminError', controller.admin.adminBase.errorMsg);

  // 用户登录和退出
  router.get('/login', controller.home.login.index);
  router.post('/login', controller.home.login.login);
  router.get('/logout', controller.home.login.logout);

  // 管理员登录
  router.get('/adminlogin', controller.admin.login.adminIndex);
  router.post('/adminlogin', controller.admin.login.adminLogin);
  router.get('/adminLogout', controller.admin.login.adminLogout);

  // 管理员首页
  app.router.get('/Index', controller.admin.index.index);

  // 分类管理
  router.get('/classify', controller.admin.classify.manage);
  router.get('/classify/all', controller.admin.classify.knowlist);
  router.get('/knowmana', controller.admin.classify.manage);
  router.get('/classify/tree', controller.admin.classify.tree);
  router.get('/classify/list', controller.admin.classify.list);
  router.post('/classify/add', controller.admin.classify.addClass);

  // 系统设置-前台菜单管理
  router.get('/homemenu', controller.admin.setup.menuManage);
  router.get('/homemenu/add', controller.admin.setup.addMenu);
  router.post('/homemenu/add', controller.admin.setup.addMenu);
  router.get('/homemenu/edit', controller.admin.setup.editMenu);
  router.post('/homemenu/update', controller.admin.setup.editMenu);

  // 系统设置-前台菜单管理
  router.get('/adminMenu', controller.admin.setup.menuManage);
  router.get('/allMenu', controller.admin.setup.getAllMenu);

  // 爬虫
  router.get('/reptilian', controller.admin.reptilian.Index);
  router.post('/reptilian', controller.admin.reptilian.Index);
  router.get('/reptilian/lists', controller.admin.reptilian.repMain);
  router.get('/reptilian/detail', controller.admin.reptilian.getDetail);
  router.post('/reptilian/add', controller.admin.reptilian.addKnow);
  router.get('/reptilian/page', controller.admin.reptilian.repPage);
  router.get('/reptilian/del', controller.admin.reptilian.delWebData);

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
  router.get('/admindetail', controller.home.knowledge.admindetail);
  router.get('/getclassknow', controller.home.knowledge.getClassKnowledge);

  // 知识标签
  router.get('/tags', controller.admin.tags.index);
  router.get('/tags/add', controller.admin.tags.add);
  router.post('/tags/add', controller.admin.tags.add);
  router.get('/pageTags', controller.admin.tags.pageTags);

  // 文件上传
  router.post('/upload', controller.home.knowledge.upload);

  // 部门管理
  router.get('/department', controller.admin.department.index);
  router.get('/department/add', controller.admin.department.add);
  router.post('/department/add', controller.admin.department.add);

  // 文档审核
  router.get('/examine', controller.admin.examine.index);
  router.get('/examinePage', controller.admin.examine.page);
  router.get('/examine/detail', controller.admin.examine.detail);
  router.post('/examine/update', controller.admin.examine.updateDoc);
  router.post('/examine/nothrough', controller.admin.examine.nothrough);

  // 分类列表
  router.get('/classLists', controller.home.classify.lists);
  router.get('/getKnowlist', controller.home.classify.listsJson);

  // 关键词搜素
  router.get('/search', controller.home.search.search);

  // 知识社区
  router.get('/community', controller.home.community.index);
  router.post('/putQuestion', controller.home.community.putQuestion);
  router.get('/questiondetail', controller.home.community.detail);
  router.post('/Community/answer', controller.home.community.answer);
  router.post('/Community/best', controller.home.community.bestAnswer);

  // 添加学习专辑
  // router.get('/learning/addAblum', controller.admin.study.addAblum);

  // 知识圈
  router.get('/circle', controller.home.circle.index);
  router.get('/score', controller.home.circle.score);
  router.get('/circleinformation', controller.home.circle.information);
  router.get('/circle/detail', controller.home.circle.detail);
  router.get('/circle/correct', controller.home.circle.correct);
  router.get('/circle/update', controller.home.circle.update);

  // 知识专辑管理
  router.get('/album', controller.admin.album.index);
  router.get('/album/add', controller.admin.album.addAlbum);
  router.post('/album/add', controller.admin.album.addAlbum);
  router.get('/album/list', controller.admin.album.list);
  router.get('/album/admindetail', controller.admin.album.ablumDetail);

  // 上传图片
  router.post('/upload/image', controller.admin.upload.uploadImg);

  // 员工信息
  router.get('/getUserClass', controller.admin.user.userClass);

  // 学习中心
  router.get('/learning', controller.home.learning.index);
  router.get('/learning/detail', controller.home.learning.detail);
  router.get('/learning/startstudy', controller.home.learning.study);
};