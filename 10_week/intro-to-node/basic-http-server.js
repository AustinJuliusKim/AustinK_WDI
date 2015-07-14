var http = require('http');
var fs = require('fs');
var myPoem;
myPoem = fs.readFileSync('poem.txt');

var routes = {
	'/' : function(response){
		response.write("Welcome");
	},
	'/about': function(response){
		response.write("About Me");
	},
	'contact': function(){},
	'/poem': function(response){
		// response.writeHeaders({'Content-type': 'text.html'});
		response.write(myPoem);
	}
}

var myServer = http.createServer(function(request, response){
	console.log(request.method);
	console.log(request.url);

	if (routes[request.url]){
		routes[request.url](response);
		response.end();
	} else {
		response.end("no such route");
	}
});	

myServer.listen(1337);