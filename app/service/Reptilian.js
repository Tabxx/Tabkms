const Service = require('egg').Service;
var eventproxy = require('eventproxy');
var superagent = require('superagent');
var cheerio = require('cheerio');
var url = require('url');
var he = require('he');

class ReptilianService extends Service {

    /**
     * 爬虫抓取网络信息
     * @returns {Promise<void>}
     */
    async getData(cnodeUrl = 'https://www.csdn.net/', rule, ele1) {
        const myapp = this.app;

        // 删除数据库中旧数据
        myapp.mysql.delete('kms_webdata');
        superagent.get(cnodeUrl)
            .end(function (err, res) {
                if (err) {
                    return console.error(err);
                }
                var topicUrls = [];
                var $ = cheerio.load(res.text);

                // 设置所有的url
                $('#feedlist_id h2 a').each(function (idx, element) {
                    var $element = $(element);
                    var href = url.resolve(cnodeUrl, $element.attr('href'));
                    topicUrls.push(href);
                    console.log($('#feedlist_id h2').length);
                });


                var ep = new eventproxy();

                // 开始爬虫
                ep.after('topic_html', topicUrls.length, function (topics) {
                    topics = topics.map(function (topicPair) {
                        var topicHtml = topicPair[1];
                        var $ = cheerio.load(topicHtml, {
                            decodeEntities: false
                        });

                        let obj = {
                            title: $('.title-article').text().trim(),
                            author: $('.follow-nickName').text().trim(),
                            time: $('.article-bar-top .time').eq(0).text().trim(),
                            comment: $('#article_content').html(),
                        };

                        if (obj.title != '' && obj.time != '') { // 爬到的数据存在就暂时放入数据库
                            myapp.mysql.insert('kms_webdata', obj);
                        }
                        return obj;
                    });
                });

                topicUrls.forEach(function (topicUrl) {
                    superagent.get(topicUrl)
                        .end(function (err, res) {
                            ep.emit('topic_html', [topicUrl, res.text]);
                        });
                });
            });
    }

    /**
     * 爬虫信息列表
     * @returns {Promise<any>}
     */
    async getLists(page = 0, limit = 0) {


        let offset = page == 1 ? 0 : (page - 1) * limit - 1;

        // 数据库查询所有标签
        let lists = await this.app.mysql.select('kms_webdata', {
            where: {
                status: 1
            }, // WHERE 条件
            limit: parseInt(limit), // 返回数据量
            offset: parseInt(offset), // 数据偏移量
        });

        // 去除row...
        lists = this.ctx.helper.toArr(lists);
        return lists;
    }

    /**
     * 爬虫抓取的数据总数
     * @returns {Promise<*>}
     */
    async getDatasCount() {
        return await this.app.mysql.count('kms_webdata', {
            status: 1
        });
    }

    /**
     * 根据id获取单挑知识的详细信息
     * @param id
     * @returns {Promise<void>}
     */
    async getDetail(id) {
        const detail = await this.app.mysql.get('kms_webdata', {
            id
        });
        return detail;
    }

    /**
     * 删除爬虫数据
     * @param {Number} id  爬虫数据id
     * @returns
     * @memberof ReptilianService
     */
    async delWebData(id) {
        const {
            app
        } = this;
        if (!id) return {
            error: 1,
            msg: 'id为空'
        };

        const result = await app.mysql.update('kms_webdata', {
            id,
            status: -1
        });

        return {
            error: 0,
            result: result.affectedRows === 1
        }
    }

}

module.exports = ReptilianService;