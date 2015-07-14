// Write a function that accepts an ARRAY or a STRING as an input and returns the last item.

var array = [1,2,3,4];
var string = "cookies are yummy";

function last(input){
	// console.log("input is " + input);
	// console.log("length is " + input.length);
	// console.log("last element is " + input[input.length -1]);
	console.log(input[input.length -1])
	return input[input.length - 1]
}

last(array);
last(string);
