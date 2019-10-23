var express = require('express');
var app = require('express')();
var http = require('http').createServer(app);
var io = require('socket.io')(http);
var cookieParser = require('cookie-parser');
var session = require('express-session');

// set the view engine to ejs
app.set('view engine', 'ejs');

//allow sessions
app.use(session({ secret: 'app', cookie: { maxAge: 1 * 1000 * 60 * 60 * 24 * 365 } }));

app.use(express.static("public"));
app.use(cookieParser());
app.use(express.urlencoded({extended:false}));

var mysql = require('mysql');

var connection = mysql.createConnection({
	host: "localhost",

	// Your port; if not 3306
	port: 3306,

	user: "root",

	password: "password",
	database: "cliks_db"
});

connection.connect();


/* -- Sessions / Authentication -- */

app.post('/auth/login', function(req,res){
	console.log(req.body)
	connection.query('SELECT * FROM users WHERE user_name = ? AND password = ?', [req.body.user_name, req.body.password],function (error, results, fields) {
		if (error) throw error;

		if (results.length == 0) {
			res.redirect('/index.html')
		} else {
			req.session.user_id = results[0].id;
			req.session.user_name = results[0].user_name;

			res.redirect('/my_network')
		}
	})
})

app.get('/my_network', function (req,res){
	// res.json(req.session)
	// res.sendfile('public/my_network.html')
	connection.query('SELECT * FROM academic_info', function (error, results, fields) {
		if (error) throw error;
		res.render('pages/my_network', {
			data: {
				user_name: req.session.user_name,
				academic_info: results
			}
		})
	})
})


/* -- User Set Up -- */
app.get('/user-setup', function(req, res){
	// if (req.query.user_name && req.query.email && req.query.password > 1){
		connection.query('INSERT INTO users (user_name, email, password) VALUES (?)', [req.query.user_name, req.query.email, req.query.password], function (error, results, fields) {
		  if (error) res.send(error)
		  else res.redirect('/');
		});
	// }else{
	// 	res.send('invalid name')
	// }
});


/* -- Socket Chat -- */
app.get('/chat', function (req, res) {
	res.sendFile(__dirname + '/public/chat.html');
});

io.on('connection', function (socket) {
	socket.on('chat message', function (msg) {
		io.emit('chat message', msg);
	});
});

io.emit('some event', { for: 'everyone' });

http.listen(3000, function () {
	console.log('listening on *:3000');
});
