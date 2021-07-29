const express = require("express");
const jwt = require('jsonwebtoken');
const app = express();
const router = express.Router();
const bodyParser = require('body-parser');
const mysql = require('mysql');

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
});

// For token
const user = { id: 3};
const token = jwt.sign({ user }, 'secret_key', {expiresIn : 20} );

// -------------------------------------------------UNTUK GUNDAM PRODUCT PG--------------------------------------------//
//tampilkan semua data 
router.get('/pg',(req, res) => {
    let sql = "SELECT * FROM productpg";
    let query = conn.query(sql, (err, results) => {
      if(err) throw err;
      res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
    });
  });
   
  //tampilkan data berdasarkan id
  router.get('/pg/:id',(req, res) => {
    let sql = "SELECT * FROM productpg WHERE product_id="+req.params.id;
    let query = conn.query(sql, (err, results) => {
      if(err) throw err;
      res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
    });
  });
   
  //Tambahkan data productpg baru
  router.post('/pg', authToken, (req, res) => {
    // Untuk memakai token gunakan header dengan key = Authorization dengan value = Bearer (spasi) token
    jwt.verify(req.token, 'secret_key', function(err, data){
      if(err){
        res.sendStatus(403);
      } else{
        let data = {product_name: req.body.product_name, product_price: req.body.product_price, product_release: req.body.product_release};
        let sql = "INSERT INTO productpg SET ?";
        let query = conn.query(sql, data,(err, results) => {
          if(err) throw err;
          res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
        });
      }
    })
  });
   
  //Edit data productpg berdasarkan id
  router.put('/pg/:id', authToken, (req, res) => {
    // Untuk memakai token gunakan header dengan key = Authorization dengan value = Bearer (spasi) token
    jwt.verify(req.token, 'secret_key', function(err, data){
      if(err){
        res.sendStatus(403);
      } else{
        let sql = "UPDATE productpg SET product_name='"+req.body.product_name+"', product_price='"+req.body.product_price+"' , product_release='"+req.body.product_release+"'  WHERE product_id="+req.params.id;
        let query = conn.query(sql, (err, results) => {
          if(err) throw err;
          res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
        });
      }
    }) 
  });
   
  //Delete data productpg berdasarkan id
  router.delete('/pg/:id', authToken, (req, res) => {
    // Untuk memakai token gunakan header dengan key = Authorization dengan value = Bearer (spasi) token
    jwt.verify(req.token, 'secret_key', function(err, data){
      if(err){
        res.sendStatus(403);
      } else{
        let sql = "DELETE FROM productpg WHERE product_id="+req.params.id+"";
        let query = conn.query(sql, (err, results) => {
          if(err) throw err;
            res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
        });
      }
    })
  });

  function authToken(req, res, next){
    const bearerHeader = req.headers["authorization"];
    if (typeof bearerHeader !== 'undefined'){
        const bearer = bearerHeader.split(" ");
        const bearerToken = bearer[1];
        req.token = bearerToken;
        next();
    } else{
        res.sendStatus(403);
    }    
  }

  module.exports = router;