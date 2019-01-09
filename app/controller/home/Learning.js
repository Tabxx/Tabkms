const baseController = require('./base');

class LearningController extends baseController {
  /**
   * 学习中心
   * @returns {Promise<void>}
   */
  async index() {
    const { ctx, service } = this;
    // 全部知识专辑
    const album = await service.album.getAlbum();

    // 必学知识专辑
    const uid = ctx.session.user.uid;
    const mustAlbum = await service.album.getMustAlbum(uid);
    const studying = await service.album.getStudyingAlbum(uid);
    studying.progress = await service.album.calStudyProgress(studying, null, uid);

    // 推荐知识
    await service.learning.recommend(uid);

    await ctx.render('Learning/index.tpl', {
      album,
      mustAlbum,
      studying
    });
  }

  /**
   * 知识专辑详情
   */
  async detail() {
    const { ctx, service } = this;
    // 专辑详情
    let album = await service.album.getAlbum(ctx.query.id);
    // 学习进度
    let progress = await service.album.getAlbumProgress(ctx.session.user.uid, album[0].id);
    // 章节
    let chapters = await service.album.getAlbumChapter(album[0].chapters);

    // 如果已经开始学习，计算进度
    if (progress.status) {
      let nowPro = progress.progress ? progress.progress.split(',').length : 0;
      progress.progress = parseInt((nowPro / album[0].chapters.split(',').length) * 100);
      progress.chapter = nowPro ? chapters[nowPro - 1].name : chapters[nowPro].name;
    }

    await ctx.render('/learning/detail.tpl', {
      album: album[0],
      chapters,
      progress
    });
  }

  async study() {
    const { ctx, service } = this;

    if (ctx.request.method == 'GET') {
      let { aid, uid, id } = ctx.request.query;

      let result = await service.album.startStudy(id, aid, uid);
      ctx.body = {
        code: result ? 0 : 1,
        msg: '',
        data: null
      };
    }
  }
}

module.exports = LearningController;
