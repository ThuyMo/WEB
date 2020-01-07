const db = require('../utils/db');

module.exports = {
    all: () => db.load('select * from users'),
    single: id => db.load(`select * from users where id = ${id}`),
    singleByEmail: async email => {
        const rows = await db.load(`select * from users where email = '${email}'`);
        return rows[0];
    },
    vohieuhoa: () => db.load(`select * from users where state != ${1}`),
    add: entity => db.add('users', entity),
    del: id => db.del('users', { id: id }),
    patch: entity => {
        const condition = { id: entity.id };
        delete entity.id;
        // console.log(condition, entity);
        entity.state = 1;
        return db.patch('users', entity, condition);
    },
    edits: entity => {
        const condition = { id: entity.id };
        delete entity.id;
        console.log(condition, entity);

        return db.patch('users', entity, condition);
    }
};