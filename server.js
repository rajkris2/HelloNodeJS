// server.js

var express = require('express');
var app = express();

var port = process.env.PORT || 5001;

app.get('/', function(req, res) {
    res.json("Hello nodejs");
});

// start the app
app.listen(port);
console.log('Running on http://localhost:' + port);
