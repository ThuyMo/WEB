const express = require('express');
const categoryModel = require('../../models/category.model');

const router = express.Router();

router.get('/', async (req, res) => {

  try {
   
    const rows = await categoryModel.all();
    res.render('admin', {
      categories: rows,
      empty: rows.length === 0
    });
  } catch (err) {
    console.log(err);
    res.end('View error log in console.');
  }
})

module.exports = router;