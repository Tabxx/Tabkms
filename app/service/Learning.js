const Service = require('egg').Service;

class LearningService extends Service {
    /**
     * 推荐知识专辑
     * @param {*} uid 用户id
     */
    async recommend(uid) {
        // 获取用户标签
        let userTags = await this.app.mysql.get('kms_users', {
            id: uid
        });

        // 获取用户行为标签
        let sql = `select tid from kms_action where uid = ${uid}`;
        let actionTags = await this.app.mysql.query(sql);

        // 标签集合
        let tags = userTags.tags.split(',');
        let tagscount = [];

        actionTags.map(obj => {
            tags = tags.concat(obj.tid.split(','));
        })

        // 标签统计
        tags.map(item => {
            let index = tagscount.findIndex(obj => obj.tid == item)
            if (index === -1) {
                tagscount.push({
                    tid: item,
                    nums: 1
                });
            } else {
                tagscount[index].nums++;
            }
        });

        // 标签排序
        tagscount.sort((obj1, obj2) => {
            return obj2.nums - obj1.nums;
        });

        // 用户行为总和
        const actions = tagscount.reduce((n, m) => n + m.nums, 0);

        // 标签使用率计算
        tagscount.map(item => {
            item.rate = item.nums / actions;
        });

        // 取标签使用率大于60%，且排名前二的标签
        let topTwoTags = tagscount.filter(item => item.rate >= 0.6).slice(0, 2);

        // 如果没有大于60%的使用概率，取前2推荐
        if (topTwoTags.length === 0) {
            topTwoTags = tagscount.slice(0, 2);
        }

        // 最终推荐标签
        let finalTags = [];
        topTwoTags.map(item => finalTags.push(item.tid));

        // 推荐学习专辑
        let rsql = `select * from kms_album where tags like '%${finalTags[0]},%' or tags like '%$,{finalTags[0]}%'`;
        let ralbum = await this.app.mysql.query(rsql);

        return this.ctx.helper.toArr(ralbum);
    }


}

module.exports = LearningService;