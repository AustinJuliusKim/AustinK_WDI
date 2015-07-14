// #REVERSE STRING
// ---

// Create a function named "reverse" for the String prototype that will allow the following functionality:

// EXAMPLE: 
    
//     "String".reverse();         //=> returns "gnirtS"
//     "I like cookies".reverse(); //=> "seikooc ekil I"
	

// HINT: To add functions to the the STRING prototype use the following syntax:

//     String.prototype.myCoolFunction = function(){
//       console.log("My mom says I'm the smartest person ever");
//       }
      
//     "You're a jerk".myCoolFunction() #=> "My mom says I'm the smartest person ever"



var stringOne = "My cookies bring all the boys to the yard";
var stringTwo = "su ot gnoleb era sesab ruoy lla";

// // console.log(string.split(""));
// var array = string.split("");

// var reversedArray = array.reverse();
// console.log(reversedArray);

// var reversedString = reversedArray.toString();
// console.log(reversedString);

// reversedString = reversedString.replace(/,/g, "");
// console.log(reversedString);


function reverse(string) {
	var array = string.split("");
	var reversedArray =  array.reverse();
	var reversedString = reversedArray.toString();
	return reversedString = reversedString.replace(/,/g, "");
}

console.log(reverse(stringOne));
console.log(reverse(stringTwo));
