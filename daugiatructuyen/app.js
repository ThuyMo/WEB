var express = require('express');
var exphbs  = require('express-handlebars');
require('express-async-errors');
var app = express();
app.use(express.json());
app.use(express.urlencoded({
  extended: true
}));

app.engine('handlebars', exphbs({
    defaultLayout:'main.handlebars',
    layoutsDir:'views/_layouts'
}));
app.set('view engine', 'handlebars');
app.use(express.static('public'));
app.get('/home',(req,res)=>{
    // res.end('hello express!');
    res.render('home');
})
app.get('/admin',(req,res)=>{
    // res.end('hello express!');
    res.render('admin');
})
app.get('/auction',(req,res)=>{
    // res.end('hello express!');
    res.render('auction');
})
app.get('/contact',(req,res)=>{
    // res.end('hello express!');
    res.render('contact');
})
app.get('/change_pass',(req,res)=>{
    // res.end('hello express!');
    res.render('change_pass');
})
app.get('/detail_product',(req,res)=>{
    // res.end('hello express!');
    res.render('detail_product');
})
app.get('/introduce',(req,res)=>{
    // res.end('hello express!');
    res.render('introduce');
})
app.get('/laptop',(req,res)=>{
    // res.end('hello express!');
    res.render('laptop');
})
app.get('/member',(req,res)=>{
    // res.end('hello express!');
    res.render('member');
})
app.get('/mobiphone',(req,res)=>{
    // res.end('hello express!');
    res.render('mobiphone');
})
app.get('/my_auction',(req,res)=>{
    // res.end('hello express!');
    res.render('my_auction');
})

app.get('/news',(req,res)=>{
    // res.end('hello express!');
    res.render('news');
})
app.get('/partner',(req,res)=>{
    // res.end('hello express!');
    res.render('partner');
})
app.get('/reset_pass',(req,res)=>{
    // res.end('hello express!');
    res.render('reset_pass');
})
app.get('/reset',(req,res)=>{
    // res.end('hello express!');
    res.render('reset');
})
app.get('/search_product',(req,res)=>{
    // res.end('hello express!');
    res.render('search_product');
})
app.get('/seller_add_product',(req,res)=>{
    res.render('seller_add_product');
})
app.get('/seller_products',(req,res)=>{
    res.render('seller_products');
})
app.get('/seller_detail_product',(req,res)=>{
    res.render('seller-detail_product');
})
app.get('/signin',(req,res)=>{
    res.render('signin');
})
app.get('/signup',(req,res)=>{
    res.render('signup');
})
app.get('/systerm_email',(req,res)=>{
    res.render('systerm_email');
})
app.get('/update_info',(req,res)=>{
    res.render('update_info');
})
app.get('/user_detail_product',(req,res)=>{
    res.render('user_detail_product');
})
app.get('/user_laptop',(req,res)=>{
    res.render('user_laptop');
})
app.get('/user_logined',(req,res)=>{
    res.render('user_logined');
})
app.get('/watch_list',(req,res)=>{
    res.render('watch_list');
})

app.use('/admin/categories', require('./routes/admin/category.routes'));
app.use('/admin/product', require('./routes/admin/product.routes'));
app.use('/admin/users', require('./routes/admin/users.routes'));
app.use((req, res, next) => {
    // res.render('vwError/404');
    res.send('You\'re lost');
  })
  
  //
  // default error handler
  
  app.use((err, req, res, next) => {
    // res.render('vwError/index');
    console.error(err.stack);
    res.status(500).send('View error on console.');
  })

app.listen(3000,()=>{
    console.log('web server is running at http://localhost:3000');
})