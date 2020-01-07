const express = require('express');

const moment = require('moment');

const userModel = require('../../models/users.model');

const bcrypt = require('bcryptjs');

const router = express.Router();

router.get('/register', (req, res) => {
    res.render('vwAccount/register');
});

router.post('/register', async(req, res) => {
    const N = 10;
    const hash = bcrypt.hashSync(req.body.pass, N);
    // (uname,birthday,pass,address,email, position)
    const entity = req.body;
    const birthday = moment(entity.birthday, 'DD-MM-YYYY').format('YYYY-MM-DD');
    entity.pass = hash;
    entity.birthday = birthday;

    // delete entity.birthday;

    const result = await userModel.add(entity);
    res.render('vwAccount/register');
});


router.get('/logins', (req, res) => {
    res.render('vwAccount/login');
});

router.post('/login', async(req, res) => {
    const user = await userModel.singleByEmail(req.body.email);
    if (user === null)
        throw new Error('Invalid username or password.');

    const rs = bcrypt.compareSync(req.body.pass, user.pass);
    if (rs === false)
        return res.render('vwAccount/login', {
            err_message: 'Login failed'
        });

    delete user.pass;
    req.session.isAuthenticated = true;
    req.session.authUser = user;

    // const url = req.query.retUrl || '/';
    res.redirect('/admin/product');
})


module.exports = router;