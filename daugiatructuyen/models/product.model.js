const db = require('../utils/db');

module.exports = {
  all: () => db.load('select * from product'),
  allByCat: category => db.load(`select * from product where category = ${category}`),

  single: id => db.load(`select * from product where id = ${id}`),
  add: entity => db.add('product', entity),
  del: id => db.del('product', { id: id }),
  patch: entity => {
    const condition = { id: entity.id };
    delete entity.id;
    return db.patch('product', entity, condition);
  },
  allWithDetails: _ => {
    const sql = `
    select p.id, p.name_product, c.type as type
      from category c left join product p on c.id = p.category
      ;`;
    return db.load(sql);
  },
};
