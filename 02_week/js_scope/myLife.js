var myHobbies = "camping surfing programming sleeping";

function tellYouAboutMe() {
	console.log("I love :" + myHobbies);
	function myDirtyLittleSecret() {
		var myHobbies = "pizza and netflix";
		// using var will affect the scope of myHobbies
		console.log("I also love " + myHobbies);
	}
	// will not print to console unless you call the function inside function
	myDirtyLittleSecret();
	console.log(myHobbies);
	// will print out global variable "camping surfing programming sleeping" 
	//   because var was used inside the function myDirtyLittleSecret


}
tellYouAboutMe();


console.log("I secretly love " + shanye);