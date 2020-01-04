// console.log('hello world');
// var sum= (x, y)=> x + y;
// var sum=function(x,y){
//     return x+y;
// }
// var utils=require('./utils.js')
var MD5 = require('md5.js');
var {sum,PI}=require('./utils.js');
var x= 5;
var y= 10;
var s= sum(x,y* PI);
console.log(`${x} + ${y} = ${s}`);

 var raw_password='12345';
 var md5_password= new MD5().update(raw_password).digest('hex');
console.log(md5_password);