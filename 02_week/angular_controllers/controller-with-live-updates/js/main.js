angular
	.module('myApp',[])
	// No semicolon chaining the controller
	.controller('MathController', MathController);

	function MathController() {
		console.dir(this);
		this.num = 0;

		this.double = function(value){
			return value * 2;
		}

		this.triple = function(value){
			return value * 3;
		}
	}