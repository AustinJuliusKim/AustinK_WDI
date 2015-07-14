var myAwesomeDonutShop = angular.module("donutShop",[]);
// format for parameter is the name of the controller and the
// constructor function
myAwesomeDonutShop.controller("DonutController",DonutController);
// Make note that we're using the "controller" as syntax and that 
// it's different than $scope syntax. It's beyond the scope of this
// lesson

function DonutController(){
	// this.shop is an array of objects that we can interate over
	this.shop = {
		donuts: [
				{	
					type: "Chocolate Glazed", 
					image: "images/chocolate-glazed.png"
				},
				{	
					type: "Glazed", 
					image: "images/glazed.png"
				},
				{	
					type: "Lemon Sprinkles", 
					image: "images/lemon-sprinkles.png"
				},
				{	
					type: "Pink Chocolate Drizzled", 
					image: "images/pink-chocolate-drizzled.png"
				},
				{	
					type: "Vanilla Iced", 
					image: "images/vanilla-iced.png"
				},
				{	
					type: "Pink Sprinkles", 
					image: "images/pink-sprinkles.png"
				},
				{	
					type: "Blue", 
					image: "images/blue.png"
				},
				{	
					type: "Green", 
					image: "images/green.png"
				},
				{	
					type: "Chocolate Half-Sprinkles", 
					image: "images/chocolate-half-sprinkles.png"
				}
		]
	};

	this.my = {
		donuts: [],
		total: function(){
			var total = this.donuts.length * 0.89;
			return total.toFixed(2);
		}
	};
	

	this.addDonut = function(i){
		var original = this.shop.donuts[i];
		var donut = angular.copy(original);
		this.my.donuts.unshift(donut);
	};
	this.removeDonut = function(i){
		this.my.donuts.splice(i, 1);
	};
}