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

// For token
const user = { id: 3};
const token = jwt.sign({ user }, 'secret_key', {expiresIn : 20} );
 //
//connect to database
conn.connect((err) =>{
  if(err) throw err;
});

// -------------------------------------------------UNTUK FILM GUNDAM--------------------------------------------//
//tampilkan semua data 
router.get('/film',(req, res) => {
    let sql = "SELECT * FROM film";
    let query = conn.query(sql, (err, results) => {
      if(err) throw err;
      res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
    });
  });
   
  //tampilkan data berdasarkan id
  router.get('/film/:id',(req, res) => {
    let sql = "SELECT * FROM film WHERE film_id="+req.params.id;
    let query = conn.query(sql, (err, results) => {
      if(err) throw err;
      res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
    });
  });
   
  //Tambahkan data film baru
  router.post('/film', authToken, (req, res) => {
    // Untuk memakai token gunakan header dengan key = Authorization dengan value = Bearer (spasi) token
    jwt.verify(req.token, 'secret_key', function(err, data){
      if(err){
        res.sendStatus(403);
      } else{
        let data = {film_name: req.body.film_name, film_type: req.body.film_type, film_release: req.body.film_release, film_timeline: req.body.film_timeline};
        let sql = "INSERT INTO film SET ?";
        let query = conn.query(sql, data,(err, results) => {
          if(err) throw err;
          res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
        });
      }
    })
  });
   
  //Edit data film berdasarkan id
  router.put('/film/:id', authToken, (req, res) => {
    // Untuk memakai token gunakan header dengan key = Authorization dengan value = Bearer (spasi) token
    jwt.verify(req.token, 'secret_key', function(err, data){
      if(err){
        res.sendStatus(403);
      } else{
        let sql = "UPDATE film SET film_name='"+req.body.film_name+"', film_type='"+req.body.film_type+"' , film_release='"+req.body.film_release+"' , film_timeline='"+req.body.film_timeline+"' WHERE film_id="+req.params.id;
        let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
        });
      }
    })
  });
   
  //Delete data film berdasarkan id
  router.delete('/film/:id', authToken, (req, res) => {
    // Untuk memakai token gunakan header dengan key = Authorization dengan value = Bearer (spasi) token
    jwt.verify(req.token, 'secret_key', function(err, data){
      if(err){
        res.sendStatus(403);
      } else{
        let sql = "DELETE FROM film WHERE film_id="+req.params.id+"";
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