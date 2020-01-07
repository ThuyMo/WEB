module.exports = function(app) {
    app.use('/account', require('../routes/admin/account.routes'));
    app.use('/categories', require('../routes/category.routes'));
    app.use('/sellers', require('../routes/category.routes'));
    app.use('/admin/categories', require('../routes/admin/category.routes'));
    app.use('/admin/product', require('../routes/admin/product.routes'));
    app.use('/admin/users', require('../routes/admin/users.routes'));

};