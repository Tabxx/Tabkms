const Service = require('egg').Service;

class SetupService extends Service {

    /**
     * 获取前台菜单
     * @returns {Promise<void>}
     */
    async getMenu(type){
        let menus = await this.app.mysql.select('kms_menu', {
            where: {status: 1, type},
        });
        return menus;
    }

    /**
     * 添加菜单
     * @param menu
     * @returns {Promise<{result: boolean}>}
     */
    async addMenu(menu){
        const result = await this.app.mysql.insert('kms_menu',
            {
                name: menu.name,
                pid: parseInt(menu.pid),
                type: parseInt(menu.type),
                url: menu.url
            });

        return { result: result.affectedRows === 1 };
    }

    /**
     * 获取指定id菜单的信息
     * @param id
     * @returns {Promise<void>}
     */
    async editMenu(id){
        return await this.app.mysql.get('kms_menu',{id});
    }

    /**
     * 更新菜单
     * @param menu
     * @returns {Promise<{result: boolean}>}
     */
    async updateMenu(menu){
        const row = {
            id: menu.id,
            name: menu.name,
            url: menu.url,
        };

        const result = await this.app.mysql.update('kms_menu', row);
        return { result: result.affectedRows === 1 };
    }

    /**
     * 后台菜单获取
     * @returns {Promise<void>}
     */
    async getAllMenu(){
        let topClass = await this.app.mysql.select('kms_menu',{where: {pid: 0, type: 1}});
        topClass = this.ctx.helper.toArr(topClass);

        let classArr = [];
        for (let obj in topClass) {
            classArr[obj] = topClass[obj];
            const childClass = await this.app.mysql.select('kms_menu', {
                where: {pid: topClass[obj].id}
            });
            topClass[obj].child = childClass;
        }

        return classArr;
    }

    /**
     * 前台菜单获取
     * @returns {Promise<void>}
     */
    async getHomeMenu(type) {
        let topClass = await this.app.mysql.select('kms_menu',{where: {pid: 0, type}});
        topClass = this.ctx.helper.toArr(topClass);

        let classArr = [];
        for (let obj in topClass) {
            classArr[obj] = topClass[obj];
            const childClass = await this.app.mysql.select('kms_menu', {
                where: {pid: topClass[obj].id}
            });
            topClass[obj].child = childClass;
        }

        return classArr;
    }


}

module.exports = SetupService;