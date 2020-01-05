const mysql = require('mysql');
const util = require('util');

const pool = mysql.createPool({
  connectionLimit: 50,
  host: '127.0.0.1',
  port: 3306,
  user: 'root',
  password: '123456',
  database: 'daugia'
});

const mysql_query = util.promisify(pool.query).bind(pool);

module.exports = {
  load: sql => mysql_query(sql),
  
};
