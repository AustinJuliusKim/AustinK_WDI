angular.module('myApp')
	.controller('MyController', MyController);

MyController.inject = ['$http'];

	function MyController($http){
		var self = this;
		console.dir(this);
		self.name = '';
		self.popUp = popUp;
		self.names = ['Glenn', 'Shawn', 'Jimmy', 'Blaise'];

		//  declared function
		function popUp(){
			alert('Hello ' + self.name);
		};

		//  anonymous function
		// self.austinKim = function() {
		// 	alert('Steph Curry is da real MVP');
		// };

		// $http is used by angular to make AJAX requests
		$http({
			method: 'GET',
			url: 'http://glenndama.herokuapp.com/api/people',
			params: {limit: 10}
		}) 
		.success(function(data){
			self.jsonNames = data;
			console.dir(self.jsonNames);
		})
		.error(function(data){
			alert("Your stuff don't work!");
		}); // end $httpfunction
	}