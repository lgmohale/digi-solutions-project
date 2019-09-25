const express = require('express');
const bodyParser = require("body-parser");
const cors = require('cors')
const router = require('./routes/api');
var app = express();

app.use(cors()) 
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use('/api/v1', router);

app.listen( process.env.PORT || 8080, () => {
    console.log('Server is running.. on Port 8080');
});