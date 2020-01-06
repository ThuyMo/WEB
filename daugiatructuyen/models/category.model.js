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
  },

  allWithDetails: _ => {
    const sql = `
    select c.id, c.type, count(p.id) as num_of_products
    from category c left join product p on c.id = p.category
    group by c.id, c.type`;
    return db.load(sql);
  },
  countNumber: id => {
    const sql = `
    select c.id, c.type, count(p.id) as num_of_products
    from category c left join product p on c.id = p.category
    where c.id= ${id}
    group by c.id, c.type`;
    return db.load(sql);
  },
};
