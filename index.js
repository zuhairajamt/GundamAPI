const express = require('express');
const jwt = require('jsonwebtoken');
const bodyParser = require('body-parser');
const app = express();
const mysql = require('mysql');

var PORT = process.env.PORT || 8080;
 
// parse application/json
app.use(bodyParser.json());
 
//create database connection
//const conn = mysql.createConnection({
  //host: 'localhost',
  //user: 'root',
  //password: '',
  //database: 'gundam_db'
//});

const conn = mysql.createConnection({
  host: 'sql6.freesqldatabase.com',
  user: 'sql6415209',
  password: 'Q4erYCB3H1',
  database: 'sql6415209',
  port: 3306
});
 
//connect to database
conn.connect((err) =>{
  if(err) throw err;
  console.log('Mysql Connected...');
});

// Connect to Routes
const filmRoute = require('./routes/gundamfilm');
const hgRoute = require('./routes/gundamhg');
const rgRoute = require('./routes/gundamrg');
const mgRoute = require('./routes/gundammg');
const pgRoute = require('./routes/gundampg');
const userRoute = require('./routes/user');

app.use('/api/', filmRoute);
app.use('/api/products', hgRoute);
app.use('/api/products', rgRoute);
app.use('/api/products', mgRoute);
app.use('/api/products', pgRoute);
app.use('/api/user/', userRoute);
 
//Server listening
app.listen(PORT, () => {
  console.log('Connected to http://localhost:8080');
});
