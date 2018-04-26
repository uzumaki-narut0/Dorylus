#!/usr/bin/env node
var path = require('path');
var express = require('express');
var app = express();
var http = require('http').Server(app);
var hbs = require('express-handlebars');
var cors = require('cors');
var bodyParser = require('body-parser');
app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// app.use(morgan('combined'))
app.use(express.static(__dirname + '/public'));

var portnumber = process.env.PORT || 3000;

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

/* Routing PART*/

app.get('/home', function(req, res){
  res.render("home");

});

app.get('/dashboard', function(req, res){
  res.render("dashboard");

});

app.get('/blog_home', function(req, res){
  res.render("blog_home");

});

app.get('/blog_user_profile', function(req, res){
  res.render("blog_user_profile");

});

app.get('/blog_create', function(req, res){
  res.render("blog_create");

});

app.get('/blog_post/:blog_hash',function(req,res){
  res.render("blog_post",{blog_hash : req.params.blog_hash});
})


http.listen(portnumber, function () {
  console.log('Dorylus server is listening on port!'+portnumber);
})
