// Require express file
var express			 	= require('express');
//  middleware
var bodyParser 		= require('body-parser');
// Hook up MongoDb
var mongo 				= require('mongoskin');
var db 							= mongo.db("mongodb://localhost:27017/blogger");

db.bind('posts');

// Create app with express
var app 						= express();
var http 						= require('http').Server(app);
var io 							= require('socket.io')(http);
// Middleware that sits between client and server
app.use(bodyParser.urlencoded());
// Use express static module, served from public dir
app.use(express.static(__dirname + '/public'));
////////////////////////////////////////////////////////////////////////////////////
// Event driven development i.e. listening for event
io.on('connection', function(socket){
	console.log('---------------------------A Client Just Connected----------------------------');
	socket.on('What is up, Doc?', function(data){
		console.log(data);
		io.emit("server-says", "somebody said hello")
	});
	socket.on('disconnect', function(){
		console.log('-------------------------A Client Just Disconnected---------------------------');
	})
});


/////////////////////////////////////////////////////////////////////////////////////


//  When there is a get request to my server, execute 
app.get('/', function(request,response){
	response.render('welcome.jade');
});

app.get('/posts/', function(request, response){	
	db.posts.find().toArray(function(err, result){
		response.render('posts-list.jade', {posts: result});
		console.log(result);
	})
});

app.get('/posts/:id', function(request, response){	
	db.posts.findById(request.params.id, function(err, result){
		console.log(err);
		response.render('post-show.jade', {post: result});
	})
});

//  When there is a post request to my server
app.post('/posts/', function(request, response){
	db.posts.insert(request.body, function(err, result){
		response.redirect('/posts');
	});
});

app.post('/posts/:id', function(request, response){
	console.log(request.body);
	console.log(response.body);
	db.posts.find({}, function(err, result){
		console.log(result.body);
	});
});






http.listen(3000);	