const express = require('express');
const bodyParser = require("body-parser");
const cors = require('cors')
const router = require('./routes');
var app = express();

app.use(cors()) 
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use('/', router);

app.listen( process.env.PORT || 4000, () => {
    console.log('Server is running.. on Port 4000');
});