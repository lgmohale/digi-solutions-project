const pool = require('../models')

pool.connect();

exports.list = function (req, res) {

    pool.query('SELECT * FROM universities', function (err, result) {
        if (err) {
            console.log(err);
            res.status(400).send(err);
        }
        res.render('universities/list', { title: "Universities", data: result.rows });
    });

};

exports.add = function (req, res) {
    res.render('universities/add', { title: "Add University"  });
};

exports.edit = function (req, res) {

    var id = req.params.id;

    pool.query('SELECT * FROM universities WHERE id=$1', [id], function (err, result) {
        if (err) {
            console.log(err);
            res.status(400).send(err);
        }
        res.render('universities/edit', { title: "Edit University", data: result.rows });
    });

};

exports.save = function (req, res) {

    var cols = [req.body.name, req.body.address, req.body.email, req.body.phone];

    pool.query('INSERT INTO universities(name, email, contactno, address) VALUES($1, $2, $3, $4) RETURNING *', cols, function (err, result) {
        if (err) {
            console.log("Error Saving : %s ", err);
        }
        res.redirect('/universities');
    });

};

exports.update = function (req, res) {

    var cols = [req.body.name, req.body.address, req.body.email, req.body.phone, req.params.id];

    pool.query('UPDATE universities SET name=$1, address=$2,email=$3, phone=$4 WHERE id=$5', cols, function (err, result) {
        if (err) {
            console.log("Error Updating : %s ", err);
        }
        res.redirect('/universities');
    });

};

exports.delete = function (req, res) {

    var id = req.params.id;

    pool.query("DELETE FROM universities WHERE id=$1", [id], function (err, rows) {
        if (err) {
            console.log("Error deleting : %s ", err);
        }
        res.redirect('/universities');
    });

};