var fs = require('fs');
var myPoem;

console.log("before io operation");

// fs.readFile('poem.txt', function(error, data){
// 	if (error) throw error;
// 	myPoem = data.toString('utf-8');
	// console.log(myPoem);
// });

myPoem = fs.readFileSync('poem.txt');
console.log(myPoem.toString());

console.log("after io operation");
