const express = require('express');
const router = express.Router();
const pool = require('../models');

pool.connect();

//list of universities
router.get('/getUniversities', (req, res) =>{
    pool.query('SELECT * FROM university', (err, result) =>{
        if(err){
            res.status(400).send(err);
            console.log('Oops, could not list universities', err);
        }
        else{
            res.send(result.rows)
        }
    });
});

//Adding universities
router.post('/putUniversities', (req, res) =>{

    const newVarsity = [req.body.university_name, req.body.university_description, req.body.website, req.body.telephone, req.body.email,req.body.city, req.body.province,  req.body.country];

    pool.query('INSERT INTO university(university_name, university_description, website, telephone, email, city, province, country) VALUES($1, $2, $3, $4, $5, $6, $7, $8) RETURNING *', newVarsity,  (err, result) => {
        if (err) {
            res.status(400).send(err);
            console.log('Oops, could not add university', err);
        }
        res.send(result);
    });
});

//filter by name
router.get('/selectNames', (req, res) =>{
    pool.query('SELECT DISTINCT university_name, faculty_name FROM university, faculty ', (err, result) =>{
        if(err){
            res.status(400).send(err);
            console.log('Oops, could not list universities', err);
        }
        else{
            res.send(result.rows)
        }
    });
})

//update university information
router.put('/universities/edit/:id', (req, res) =>{

    var varsity = [req.body.name, req.body.address, req.body.email, req.body.phone, req.params.id];

     pool.query('UPDATE universities SET name=$1, address=$2,email=$3, phone=$4 WHERE id=$5', varsity, (err, result) =>{
         if (err) {
             console.log("Error Updating : %s ", err);
         }
         res.send(result);
         console.log('Successfully updated versity', result)
     });
});

//delete varsitty
router.delete('/universities/delete/:id', (req, res) =>{

    var id = req.params.id;

     pool.query("DELETE FROM universities WHERE id=$1", [id], function (err, result) {
         if (err) {
             console.log("Error deleting : %s ", err);
         }
         res.send(result);
         console.log('Successfully deleted versity', result)
     });
});

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