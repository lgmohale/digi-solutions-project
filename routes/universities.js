const express = require('express');
const router = express.Router();
const pool = require('../models');

pool.connect();

//list of universities
router.get('/universities', (req, res) =>{
    pool.query('SELECT * FROM universities', (err, result) =>{
        if(err){
            res.status(400).send(err);
            console.log('Oops, could not list universities', err);
        }
        else{
            res.send(result)
            console.log(result)
        }
    });
});

//Adding universities
router.post('/university/add', (req, res) =>{

    const newVarsity = [req.body.name, req.body.address, req.body.email, req.body.phone];

    pool.query('INSERT INTO universities(name, email, contactno, address) VALUES($1, $2, $3, $4) RETURNING *', newVarsity,  (err, result) => {
        if (err) {
            res.status(400).send(err);
            console.log('Oops, could not add university', err);
        }
        res.send(result);
        console.log('Successfully added versity', result)
    });
});

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

module.exports = router;


// exports.add = function (req, res) {
//     res.render('universities/add', { title: "Add University"  });
// };

// exports.edit = function (req, res) {

//     var id = req.params.id;

//     pool.query('SELECT * FROM universities WHERE id=$1', [id], function (err, result) {
//         if (err) {
//             console.log(err);
//             res.status(400).send(err);
//         }
//         res.render('universities/edit', { title: "Edit University", data: result.rows });
//     });

// };

// exports.save = function (req, res) {

//     var cols = [req.body.name, req.body.address, req.body.email, req.body.phone];

//     pool.query('INSERT INTO universities(name, email, contactno, address) VALUES($1, $2, $3, $4) RETURNING *', cols, function (err, result) {
//         if (err) {
//             console.log("Error Saving : %s ", err);
//         }
//         res.redirect('/universities');
//     });

// };

// exports.update = function (req, res) {

//     var cols = [req.body.name, req.body.address, req.body.email, req.body.phone, req.params.id];

//     pool.query('UPDATE universities SET name=$1, address=$2,email=$3, phone=$4 WHERE id=$5', cols, function (err, result) {
//         if (err) {
//             console.log("Error Updating : %s ", err);
//         }
//         res.redirect('/universities');
//     });

// };

// exports.delete = function (req, res) {

//     var id = req.params.id;

//     pool.query("DELETE FROM universities WHERE id=$1", [id], function (err, rows) {
//         if (err) {
//             console.log("Error deleting : %s ", err);
//         }
//         res.redirect('/universities');
//     });

// };