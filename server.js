var express = require("express");
var app     = express();
var path    = require("path");
var url = require('url');
var request = require('request');

app.use(express.static(__dirname+'/'));

app.get('/',function(req,res){
    res.sendFile(path.join(__dirname+'/index.html'));
    //__dirname : It will resolve to your project folder.
});


app.get('/geturl',function(req,res){
    var url_parts = url.parse(req.url, true);
    var query = url_parts.query;

    var urltoget = decodeURIComponent(query.url);

    request.get(urltoget, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            res.send(body);
        }
    });
});

app.listen(3000, function () {
    console.log('Example app listening on port 3000!');
});

process.on('uncaughtException', function(err) {
  console.log(err);
});

