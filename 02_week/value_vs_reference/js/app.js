// Value vs Reference
console.log("we are in business");

// Primitive data types are passed by value
var myString = "hello";
var myStringCopy = myString
var myOtherString = "hello";

console.log(myString === myStringCopy);
console.log(myString === myOtherString);

var myNumber = 42;
var myNumberCopy = myNumber;
var myOtherNumber = 42;

console.log(myNumber === myNumberCopy);
console.log(myNumber === myOtherNumber);

// Now let's pass it to a function
function doStuffWithString(str) {
	console.log(str);
	str = "A Westside Story";
	console.log(str);
}

console.log(myString);
doStuffWithString(myString);
console.log(myString);

function doStuffWithNumbers(num) {
	console.log(num);
	num = 37;
	console.log(num);
}

console.log(myNumber);
doStuffWithNumbers(myNumber);
console.log(myNumber);

// Now Objects(Arrays) compare and pass by reference
var myObj = { myKey : "myValue"};
var myObjCopy = myObj;
var myOtherObj = { myKey : "myValue"};

console.log(myObj === myObjCopy); // true
console.log(myObj === myOtherObj); // false
console.log(myObjCopy === myOtherObj); // false

function doStuffWithObj(obj) {
	console.log(obj);
	obj.prop = "something goes here";
	console.log(obj);
}

console.log(myObj); 
doStuffWithObj(myObj);
console.log(myObj);
console.log(myObjCopy);

function redefineTheObj(obj) {
	console.log(obj);
	obj = {one: "you're like a dream"};
	console.log(obj);
}

console.log(myObj);
redefineTheObj(myObj);
console.log(myObj);

