
// This challenge is about Object Inheritance.

// Given the class definition (Ruby) and constructor function (JS) 
// below find a way to add a method named “bark” without adding t
// he method to the class/constructor itself.

// Challenge should be completed in Ruby and JavaScript.


function Dog(name, breed, gender, age) {
	var self = this;
	this.name = name;
	this.breed = breed;
	this.gender = gender;
	this.age = age;
	// this.bark = function(){
	// 	return "woof";
	// }
}

dog = new Dog('fido','pit bull','male',9);
dog.bark = function(){
	return "woof!";
}
console.log(dog.bark()); //returns "woof!"