const express = require('express');
const productModel = require('../models/product.model');

const router = express.Router();

//
// xem ds sản phẩm thuộc danh mục :id

router.get('/:id/product', async (req, res) => {

  for (const c of res.locals.lcCategories) {
    if (c.category === +req.params.id) {
      c.isActive = true;
    }
  }

  const rows = await productModel.allByCat(req.params.id);
  res.render('vwProducts/allByCat', {
    products: rows,
    empty: rows.length === 0
  });
})

module.exports = router;