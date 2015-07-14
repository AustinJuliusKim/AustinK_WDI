angular
	.module('checkerApp')
	.controller('CheckersController', CheckersController);

	function CheckersController(){
		var self = this;
		var checkerboard;


		self.setBoard = setBoard;

		// self.checkerboard = [
		// [null, null, null, null, null, null, null, null],
		// [null, null, null, null, null, null, null, null],
		// [null, null, null, null, null, null, null, null],
		// [null, null, null, null, null, null, null, null],
		// [null, null, null, null, null, null, null, null],
		// [null, null, null, null, null, null, null, null],
		// [null, null, null, null, null, null, null, null],
		// [null, null, null, null, null, null, null, null],
		// ];

		// self.checkerboard=
		// [[null], [null], [null], [null], [null], [null], [null], [null],
		// [null], [null], [null], [null], [null], [null], [null], [null],
		// [null], [null], [null], [null], [null], [null], [null], [null],
		// [null], [null], [null], [null], [null], [null], [null], [null],
		// [null], [null], [null], [null], [null], [null], [null], [null],
		// [null], [null], [null], [null], [null], [null], [null], [null],
		// [null], [null], [null], [null], [null], [null], [null], [null],
		// [null], [null], [null], [null], [null], [null], [null], [null]];

		for (var i = 0; i < 23; i +=2){
			self.checkerboard.push({color: "light", piece: " "})
		}	

		function setBoard(){

		}

		// function setupRed(){
		// 	for (var i = 0; i < (checkerboard.length/2); i+=2){
		// 		checkerboard[i]
		// 	}
		// }


	}