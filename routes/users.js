const express = require('express');
const bcrypt = require('bcrypt');
const router = express.Router();
const pool = require('../models');

pool.connect();

//log in the exisiting user
router.get('/login', (req, res) =>{
    res.json({
        message: 'Log-in'
    });
});

//New user sign up router
router.post('/signup', (req, res) =>{
    bcrypt.hash(req.body.password, 10)
    .then((hash) =>{

        const userDetials = [req.body.first_name, req.body.last_name, req.body.email, hash];

        pool.query('INSERT INTO users (first_name, last_name, email, password) VALUES($1, $2, $3, $4) RETURNING *', userDetials, (err, result) =>{
            if(err){
                console.log('Error saving: %s', err);
            }
            else{
                res.json({
                    message: 'user successfully registered'
                });
                console.log(result);
            }
        });
    });
});

module.exports = router;