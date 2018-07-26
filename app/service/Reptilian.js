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
    async getData(cnodeUrl, rule, ele1){
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
                $('#topic_list .topic_title').each(function (idx, element) {
                    var $element = $(element);
                    var href = url.resolve(cnodeUrl, $element.attr('href'));
                    topicUrls.push(href);
                });

                var ep = new eventproxy();

                // 开始爬虫
                ep.after('topic_html', topicUrls.length, function (topics) {
                    topics = topics.map(function (topicPair) {
                        var topicHtml = topicPair[1];
                        var $ = cheerio.load(topicHtml,{decodeEntities: false});

                        let obj = {
                            title: $('.topic_full_title').text().trim(),
                            author: $('.user_name a').text().trim(),
                            time: $('.changes span').eq(0).text().trim(),
                            comment: $('.markdown-text').html(),
                        };

                        if(obj.title != '' && obj.time != ''){  // 爬到的数据存在就暂时放入数据库
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
    async getLists(){
        let lists = await this.app.mysql.select('kms_webdata', {where: {status: 1}});
        lists = JSON.stringify(lists);
        lists = JSON.parse(lists);

        return lists;
    }

    /**
     * 根据id获取单挑知识的详细信息
     * @param id
     * @returns {Promise<void>}
     */
    async getDetail(id) {
        const detail = await this.app.mysql.get('kms_webdata', {id});
        return detail;
    }

}

module.exports = ReptilianService;