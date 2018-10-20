module.exports = {
    /**
     * 去除数据库返回数组的row...
     * @param param
     * @returns {any}
     */
    toArr(param) {
        param = JSON.stringify(param);
        param = JSON.parse(param);
        return param;
    },

    /**
     * 获取器
     * @param val
     * @returns {*}
     */
    getStatusAttr(val) {
        const status = { '-1': '删除', '0': '待审核', '1': '审核通过', '-2': '审核不通过' };
        for (let item of val) {
            item.status = status[item.status.toString()];
        }
        return val;
    },
};