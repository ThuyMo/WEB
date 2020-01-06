const db = require('../utils/db');

module.exports = {
  all: () => db.load('select * from category'),
  single: id => db.load(`select * from category where id = ${id}`),
  add: entity => db.add('category', entity),
  del: id => db.del('category', { id: id }),
  patch: entity => {
    const condition = { id: entity.id };
    delete entity.id;
    // console.log(condition, entity);
    return db.patch('category', entity, condition);
  }
};
