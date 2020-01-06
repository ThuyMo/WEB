const express = require('express');
const productModel = require('../../models/product.model');

const router = express.Router();

router.get('/', async (req, res) => {

  try {
   
    const rows = await productModel.allWithDetails();
    res.render('vwProducts/index', {
      product: rows,
      empty: rows.length === 0
    });
  } catch (err) {
    console.log(err);
    res.end('View error log in console.');
  }
})

router.get('/add', async (req, res) => {

  res.render('vwProducts/add')
})

router.post('/add', async (req, res) => {
  // console.log(req.body);
 
  const result = await productModel.add(req.body);
  res.render('vwProducts/add');
})

router.get('/err', (req, res) => {

  throw new Error('error occured');

})

// router.get('/edit/:id', async (req, res) => {
//   const rows = await productModel.single(req.params.id);
//   if (rows.length === 0) {
//     throw new Error('Invalid category id');
//   }
  
//   res.render('vwProducts/index', {
//     category: rows[0]
//   });
// })

// router.post('/patch', async (req, res) => {
//   const result = await productModel.patch(req.body);
//   res.redirect('/admin/product');
// })

router.post('/del', async (req, res) => {
  const result = await productModel.del(req.body.id);
  // console.log(result.affectedRows);
  res.redirect('/admin/product');
})

module.exports = router;