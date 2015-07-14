// ##PALINDROME
// ---

// _A **palindrome** is a word, phrase, number, or other sequence of characters which reads the same backward or forward._ 

// ---

// Write a function named "palindrome" that accepts one parameter, a **STRING**. If the word is a palindrome return ```true```, if not return ```false```.

// EXAMPLE:

//     palindrome("Glenn")  #=> false
//     palindrome("Anna")   #=> true

var stringOne = "Glenn";
var stringTwo = "Austinitsua";


function palindrome(string) {
	var holderArray = string.split("");
	console.log(holder);
	var holderString = holder.toString();
	console.log(holder1);

	var backWArray = holder.reverse();
	console.log(backW);
	var backWString = backW.toString();
	console.log(backW1);

	console.log(holder1.toLowerCase() == backW1.toLowerCase());

}
palindrome(stringOne);
palindrome(stringTwo);