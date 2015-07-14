// var shawn = {
// 	name : "Shawn",
// 	passion : "Partying on code"
// };

// Object.prototype.sing = function() {
// 	console.log("Fa la la la la la la la la!");	
// };
// // defines a method that will sing
// Object.prototype.reverse = function() {
// 	console.log("We added a new reverse method!")
// };
// // defines a method that will reverse
// var languages = ["Ruby", "JS", "Swift"];

// Array.prototype.shuffle = function() {
// 	var arr = this;
// 	for (var i = arr.length - 1 ; i >= 0 ; i--)	{
// 		var randomIndex = Math.floor(Math.random() * (arr.length));
// 		var randomElement = arr[randomIndex];
// 		arr[randomIndex] = arr[i];
// 		arr[i] = randomElement; 
// 	}
// 	return arr;
// }
// defines a new method on an Array that will shuffle


//////////////////////////////////////////
////// Constructor Functions ! ///////////
//////////////////////////////////////////

var myCar = {make : 'Porsche', model : 'Panamera', color : 'black', type : 'car'};
var yourCar = Object.create(myCar);

yourCar.interior = "leather";
yourCar.sunroof = true;

function Vehicle(make, model, type) {
	this.make = make;
	this.model = model;
	this.type = type;
}

Vehicle.prototype = {
	turnOn : function() {
		return ("Your " + this.type + " is on. Vroom, vroom.");
	}
};

var motorcycle = new Vehicle("Honda", "Ranger", "motorcycle")