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
    getStatusAttr(val){
        const status = ['删除','待审核','审核通过'];
        for(item in val){
            val[item].status = status[val[item].status + 1];
        }
        return val;
    },
};