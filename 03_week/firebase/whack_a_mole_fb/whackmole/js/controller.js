angular
	.module("basketBall",['firebase'])
	.controller("BasketballController",BasketballController);

BasketballController.$inject = ['$firebaseArray','$firebaseObject'];

	function BasketballController($firebaseArray, $firebaseObject){
		
		var self = this;
		self.test = console.dir(this);
		self.movingHoop = movingHoop;
		self.balls = getBallsObject();
		self.startGame = startGame;

		function getBallsObject() {
			var ref = new Firebase('https://wakamole.firebaseio.com/');
			var balls = $firebaseObject(ref);
			balls.image = "images/steel_chain.jpg";
			balls.hoop = false;

			return balls;
			self.balls.$save();
		}
		
		function getBallsArray() {
			var ref = new Firebase("https://wakamole.firebaseio.com/");
			var balls = $firebaseArray(ref);
		}
		self.balls = [ {image: "images/steel_chain.jpg", hoop: false},
				{image: "images/steel_chain.jpg", hoop : false},
				{image: "images/steel_chain.jpg", hoop : false},
				{image: "images/steel_chain.jpg", hoop : false},
				{image: "images/steel_chain.jpg", hoop : false},
				{image: "images/steel_chain.jpg", hoop : false},
				{image: "images/steel_chain.jpg", hoop : false},
				{image: "images/steel_chain.jpg", hoop : false},
				{image: "images/steel_chain.jpg", hoop : false}
		];


	function startGame() {
		var random = Math.floor(Math.random() * this.balls.length);
		for (var i = 0; i < balls.length; i ++) {
			self.balls[i].hoop = false;
		}
		self.balls[random].hoop = true;
	}
	
	function movingHoop(hole) {
		var index = self.balls.indexOf(hole);
		var random = Math.floor(Math.random() * this.balls.length);
		self.balls[index].hoop = false;
		self.balls[random].hoop = true;

		}


	}