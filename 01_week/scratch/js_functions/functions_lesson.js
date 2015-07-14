// Function Declaration
console.log("Let's learn about functions!");

function myDeclareFun(greeting) {
	return greeting + " , I was created by a function declaration";
}

console.log(myDeclareFun("hello"));

// Function statement or expression

var myExpressFun = function(greeting) {
	return greeting + " ,I was created by a function expression";
}

console.log(myExpressFun("Hi")); 

var letMeUseAnotherFunction = function(myFunc){
	console.log(myFunc("dude, yeah!"));
}

letMeUseAnotherFunction(myDeclareFun);