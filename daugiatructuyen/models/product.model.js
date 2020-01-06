const db = require('../utils/db');

module.exports = {
  all: () => db.load('select * from product'),
  allByCat: catId => db.load(`select * from product where id = ${id}`),

  single: id => db.load(`select * from product where id = ${id}`),
  add: entity => db.add('product', entity),
  del: id => db.del('product', { id: id }),
  patch: entity => {
    const condition = { id: entity.id };
    delete entity.id;
    return db.patch('product', entity, condition);
  }
};
