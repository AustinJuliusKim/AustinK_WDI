var myName;
//  Declare a variable
myName = "Austin";
// Assing a value to variable
// is a global variable

shanye = "Shawn Rodriguez";

function hello() {
	var presidentName = "Barrack Obama";
	// declaring and assigning a value to variable
	// is a local variable
	console.log("Hey, " + myName);
	console.log("The president is " + presidentName);

}

hello();

function logShanye() {
	daniel = "Daniel Dowling";
	// if you declare a variable inside a function without var it creates a global property
	shanye = "LeShawn";
	console.log(shanye);
}


logShanye();

if (shanye === "LeShawn") {
	var russ = "pays attention";
}

function myFunction() {
	var myOuterVariable = "I am outside";
	
	function  myInnerFunction() {
		var myInnerVariable = "I am inside";
		console.log(myOuterVariable);
		console.log(myInnerVariable); 
	}
	myInnerFunction();
	// Allows the inner function to be accessed
}