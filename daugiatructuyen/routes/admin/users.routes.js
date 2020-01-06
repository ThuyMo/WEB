const express = require('express');
const usersModel = require('../../models/users.model');

const router = express.Router();

router.get('/', async (req, res) => {

  try {
   
    const rows = await usersModel.vohieuhoa();
    res.render('vwUsers/index', {
      users: rows,
      empty: rows.length === 0
    });
  } catch (err) {
    console.log(err);
    res.end('View error log in console.');
  }
})

router.get('/add', async (req, res) => {

  res.render('vwUsers/add')
})

router.post('/add', async (req, res) => {
  console.log(req.body);
 
  const result = await usersModel.add(req.body);
  res.render('vwUsers/add');
})

router.get('/err', (req, res) => {

  throw new Error('error occured');

})

router.get('/edit/:id', async (req, res) => {
  const rows = await usersModel.single(req.params.id);
  
  // console.log(req.params.id);
  console.log(rows.body);
  if (rows.length === 0) {
    throw new Error('Invalid category id');
  }
  
  res.render('vwUsers/edit', {
    users: rows[0]
  });
})

router.post('/patch', async (req, res) => {
  
  
  const result = await usersModel.patch(req.body);
  // console.log(req.body);
  res.redirect('/admin/users');
})

router.post('/edits', async (req, res) => {
  

  const result = await usersModel.edits(req.body);
  console.log(req.body);
  res.redirect('/admin/users');
})

router.post('/del', async (req, res) => {
  const result = await usersModel.del(req.body.id);
  
  res.redirect('/admin/users');
})

module.exports = router;