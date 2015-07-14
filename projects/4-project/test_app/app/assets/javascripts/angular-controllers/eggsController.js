angular
	.module('eggApp')
	.controller('EggsController', EggsController);

	EggsController.$inject = ['$http', '$routeParams', '$window'];

	function EggsController($http, $routeParams, $window){
		var self = this;
		self.eggs = "It's working!!";

		self.getUsersIndex = function(){
			return $http({
			method: "GET",
			url: "/api/users"
			})
			.success(function(data){
				console.log("success");
				self.jsonUsers = data;
			})
			.error(function(data){
				console.log("error!");
			});
		};

		self.deleteUser = function(id, index){
			var deleteUser = $window.confirm("Are you sure you want to delete?");
				if (deleteUser) {
					var url = "/api/users/" + id;
					$http.delete(url)
						.success(function(){
							console.log('successfully deleted');
							self.jsonUsers.splice(index, 1);
						})
						.error(function(data){
							console.log("Something went wrong!");
						});
				}
		};

	};