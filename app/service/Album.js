const Service = require('egg').Service;
const moment = require('moment');

class AlbumService extends Service {
  /**
   * 获取知识专辑
   */
  async getAlbum(id) {
    let where = {
      status: 1
    };
    if (id) {
      where.id = id;
    }
    let result = await this.app.mysql.select('kms_album', {
      where
    });

    return this.ctx.helper.toArr(result);
  }

  /**
   * 添加知识专辑
   * @param {*} params
   */
  async addAlbum(params) {
    const { app, ctx } = this;

    const result = await app.mysql.beginTransactionScope(async conn => {
      let chapter = params.chapter;
      let test = params.test;

      // 插入测试题目
      let test_c = {};
      for (let item of test) {
        let result = await app.mysql.insert('kms_test', {
          content: item.content,
          option_a: item.optionA,
          option_b: item.optionB,
          option_c: item.optionC,
          option_d: item.optionD,
          correct: item.correct,
          status: 1
        });

        item.cid = result.insertId;
        if (!test_c[item.csort]) {
          test_c[item.csort] = item.cid;
        } else {
          test_c[item.csort] += ',' + item.cid;
        }
      }

      // 插入章节
      let cids = [];
      for (let item of chapter) {
        item.tids = test_c[item.sort] || '';
        let result = await app.mysql.insert('kms_chapter', {
          name: item.name,
          knowledge: item.kid,
          test: item.tids,
          status: 1
        });
        cids.push(result.insertId);
      }

      // 插入知识专辑
      let album = await app.mysql.insert('kms_album', {
        name: params.name,
        starttime: params.starttime,
        endtime: params.endtime,
        intro: params.intro,
        integral: params.integral,
        chapters: cids.join(','),
        image: params.image,
        tags: params.tags,
        status: 1
      });

      // 员工-专辑添加
      let aid = album.insertId;
      let uids = params.users.split(',');

      for (let uid of uids) {
        let au = await app.mysql.insert('kms_album_user', {
          aid,
          uid,
          status: 0
        });
      }

      return true;
    }, ctx);
  }

  /**
   * 查询知识专辑详情
   */
  async getAlbumDetail(id) {
    if (!id) return null;

    // let sql = `select a.id, a.name, a.starttime, a.endtime, a.intro, a.chapters, a.image, a.integral, c.name as cname, k.title
    //     from kms_album a, kms_chapter c, kms_knowledge k
    //     where c.id in (a.chapters) and c.knowledge = k.id and a.status = 1 and a.id=?`;

    // let result = await this.app.mysql.query(sql, [id]);
    let result = await this.app.mysql.get('kms_album', {
      id
    });

    return this.ctx.helper.toArr(result);
  }

  /**
   * 根据章节id获取章节内容
   * @param {*} cids
   * @returns
   * @memberof AlbumService
   */
  async getAlbumChapter(cids) {
    let sql = `select * from kms_chapter where id in (${cids})`;
    let chapters = await this.app.mysql.query(sql);
    return this.ctx.helper.toArr(chapters);
  }

  /**
   * 根据章节中知识id获取知识详情
   * @param {*} kids
   * @returns
   * @memberof AlbumService
   */
  async getAlbumKnow(kids) {
    let sql = `select title from kms_knowledge where id in (${kids})`;
    let knowledges = await this.app.mysql.query(sql);
    return this.ctx.helper.toArr(knowledges);
  }

  /**
   * 根据用户id获取该用户的必学知识
   * @param {*} uid
   */
  async getMustAlbum(uid) {
    if (!uid) return false;

    let sql = `select * from kms_album a, kms_album_user au where au.uid = ${uid} and au.aid = a.id`;
    let mustAlbum = await this.app.mysql.query(sql);
    return this.ctx.helper.toArr(mustAlbum);
  }

  /**
   * 根据用户id和专辑id获取学习进度
   * @param {*} uid
   * @param {*} aid
   */
  async getAlbumProgress(uid, aid) {
    let result = await this.app.mysql.get('kms_album_user', {
      uid,
      aid
    });
    return this.ctx.helper.toArr(result);
  }

  /**
   * 开始学习
   * @param {*} id
   * @param {*} aid
   * @param {*} uid
   */
  async startStudy(id, aid, uid) {
    const row = {
      id,
      aid,
      uid,
      starttime: moment().format('YYYY-MM-DD HH:mm:ss'),
      status: 1
    };
    const result = await this.app.mysql.update('kms_album_user', row);

    return result.affectedRows === 1;
  }

  /**
   * 更新学习进度
   * @param {*} aid
   * @param {*} cid
   * @param {*} uid
   */
  async updateProgress(aid, cid, uid) {
    // 获取当前进度
    let old = await this.app.mysql.get('kms_album_user', {
      aid,
      uid
    });
    let oldArray = this.ctx.helper.toArr(old);
    let progress = oldArray.progress;
    if (progress.split(',').indexOf(cid) > -1) {
      return false;
    }
    progress = !progress ? cid : progress + `,${cid}`;

    // 更新进度
    const row = {
      id: oldArray.id,
      progress,
      starttime
    };
    const result = await this.app.mysql.update('kms_album_user', row);

    return result.affectedRows === 1;
  }

  /**
   * 根据用户id返回正在学习的知识专辑
   */
  async getStudyingAlbum(uid) {
    let sql = `select * from kms_album_user au, kms_album a where au.status = 1 and uid = ${uid} and au.aid = a.id`;

    let studying = await this.app.mysql.query(sql);
    return this.ctx.helper.toArr(studying);
  }

  /**
   * 计算学习进度
   * @param {*} albums
   * @param {*} chapters
   * @param {*} uid
   */
  async calStudyProgress(albums, chapters, uid = null) {
    // console.log(albums);
    let progress = [];
    moment.locale('en', {
      relativeTime: {
        future: '%s',
        past: '%s',
        s: '秒',
        m: '一分钟前',
        mm: '%d 分钟前',
        h: '一小时前',
        hh: '%d 小时前',
        d: '一天前',
        dd: '%d 天前',
        M: '一个月前',
        MM: '%d 月前',
        y: '一年前',
        yy: '%d 年前'
      }
    });

    for (let item of albums) {
      let temp = {};
      // 获取进度
      let au = await this.getAlbumProgress(uid, item.id);
      // 获取对应章节
      chapters = chapters ? chapters : await this.getAlbumChapter(item.chapters);

      // 计算进度
      if (au.status) {
        let nowPro = au.progress ? au.progress.split(',').length : 0;
        temp.progress = parseInt((nowPro / item.chapters.split(',').length) * 100);
        temp.chapter = nowPro ? chapters[nowPro - 1].name : chapters[nowPro].name;
        temp.aid = item.id;
        temp.fromNow = moment(au.starttime).fromNow();
        progress.push(temp);
      }
    }
    return progress;
  }
}

module.exports = AlbumService;
