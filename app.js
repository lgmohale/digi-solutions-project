const express = require('express');
const bodyParser = require("body-parser");
const path = require('path');
var cors = require('cors')


var customers = require('./routes/customers'); 
var universities = require('./routes/universities'); 
var users = require('./routes/users');
var routes = require('./routes');
var app = express();

app.set('port', process.env.PORT || 4000);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use(express.static(path.join(__dirname, 'public')));

app.get('/', routes.index);
app.get('/customers', customers.list);
app.get('/customers/add', customers.add);
app.post('/customers/add', customers.save);
app.get('/customers/delete/:id', customers.delete);
app.get('/customers/edit/:id', customers.edit);
app.post('/customers/edit/:id', customers.update);

//app.get('/universities', universities.list);
// app.get('/universities/add', universities.add);
// app.post('/universities/add', universities.save);
// app.get('/universities/delete/:id', universities.delete);
// app.get('/universities/edit/:id', universities.edit);
// app.post('/universities/edit/:id', universities.update);
app.use(cors()) 
//login and signup router for users
app.use('/', users);

//universitiies routes
app.use('/', universities);

app.listen(4000, function () {
    console.log('Server is running.. on Port 4000');
});