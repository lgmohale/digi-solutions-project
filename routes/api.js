const express = require('express');
const bcrypt = require('bcrypt');
const router = express.Router();
const pool = require('../models');
pool.connect();

//get all university data from the database based on the ratings
router.get('/getUniversities', (req, res) =>{

    pool.query('SELECT DISTINCT university_name, university_rate FROM university ORDER BY university_rate DESC', (err, result) =>{
        if(err){
            res.status(400).send(err);
            console.log('Oops, could not load universities', err);
        }
        else{
            res.send(result.rows)
        }
    });
});

//get all courses from the database based on the ratings
router.get('/getCourses', (req, res) =>{

    pool.query('SELECT DISTINCT course_name, course_rate, aps FROM course ORDER BY course_rate DESC', (err, result) =>{
        if(err){
            res.status(400).send(err);
            console.log('Oops, could not load courses: ', err);
        }else{
            res.send(result.rows);
        }
    });
});

//Get all the study field data(department)
router.get('/getDepartment', (req, res) =>{

    pool.query('SELECT * FROM studyfield', (err, result) =>{
        if(err){
            res.status(400).send(err);
            console.log('Oops, could not load departments', err)
        }else{
            res.send(result.rows)
        }
    });
});

//Search query
router.get('/search', (req, res) =>{

    const searchValue = req.body.searchValue;
    
    pool.query('SELECT * FROM course WHERE aps > $1', [searchValue], (err, result) =>{
        if(err){
            res.status(400).send(err);
            console.log('Oops, could not load departments', err)
        }else{
            if(result.rowCount == 0){
                res.json({
                    message: 'No Match'
                });
            }else{
                res.send(result.rows)
            }
        }
    })
})

//Registering new User to the database
router.post('/registration', (req, res) =>{

    bcrypt.hash(req.body.userinfor_password , 10)
    .then((hash) =>{

        const regDetails = [ req.body.userinfor_name, req.body.uuserinfor_surname, req.body.userinfor_email, hash ];

        pool.query('INSERT INTO userinformation (userInfor_name, uuserInfor_surname, userInfor_email, userInfor_password) VALUES ($1, $2, $3, $4) RETURNING *', regDetails, (err, result) =>{
            if(err){
                res.status(400).send(err);
                console.log('Oops, could not register tye user: ', err)
            }else{
                res.json({
                    message: 'user successfully registered'
                });
                console.log(result);
            }
        });
    });
});


module.exports = router;