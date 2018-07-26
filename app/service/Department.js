const Service = require('egg').Service;

class DepartmentService extends Service {

    /**
     * 查询所有部门信息
     * @returns {Promise<*>}
     */
    async index(){
        const departs = await this.app.mysql.select('kms_department', {
            where: {status: 1},
        });

        return departs;
    }

    /**
     * 添加部门
     * @param depart
     * @returns {Promise<*>}
     */
    async add(depart) {
        if (depart === null) return null;

        const result = await this.app.mysql.insert('kms_department', { name: depart.name, company: depart.cid});

        return result.affectedRows === 1;
    }

}

module.exports = DepartmentService;