const express = require('express');
const jwt = require('jsonwebtoken');
const app = express();
const router = express.Router();
const bodyParser = require('body-parser');
const mysql = require('mysql');

// parse application/json
app.use(bodyParser.json());

// Route token
router.get('/token', function(req, res){
    // Auth user
    const user = { id: 3};
    const token = jwt.sign({ user }, 'secret_key', {expiresIn : 2000} );
    const bearer = "bearer";
   
    res.json({
        token: token
    });
});



module.exports = router;