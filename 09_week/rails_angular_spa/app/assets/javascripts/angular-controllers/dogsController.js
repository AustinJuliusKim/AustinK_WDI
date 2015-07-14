angular.module('dogApp')
	.controller('DogsController', DogsController);

	DogsController.$inject = ['$http', '$routeParams', '$window'];

	function DogsController($http, $routeParams, $window){
		
		var self = this;
		self.params = $routeParams;
		// self.name;
		// self.breed;
		// self.age;
		// self.dogs = "It's working!";

		self.getDogIndex = function(){
			return $http({
				method: "GET",
				url: "/api/dogs"
			})
			.success(function(data){
				console.log(data);
				self.jsonDogs = data;
				// when I call dogCtrl.jsonDogs in my view it will give me a list of dogs
			})
			.error(function(data){
				console.log('error!');
				console.log(data);
			});
		}
		////////////// = End getDogIndex = ////////////////


		self.editDog = function(){
			var url = "/api/dogs/" + self.params.id;
			var editedDog = {
				name: self.currentDog.name,
				breed: self.currentDog.breed,
				age: self.currentDog.age
			}
			// console.log(url);
			// console.log(editedDog);
			$http.patch(url,editedDog)
				.success(function(data){
					console.log("Dog successfully edited!");
					self.updatedDog = data;
					$window.location.href = ('#/dogs/' + data.id);
					// setting the window object href to "#/dogs/:id"
				})
				.error(function(data){
					console.log("Something went wrong");
					// console.log(data);
				})
		}

		self.createDog = function(){
			var newDog = {
				name: self.name,
				breed: self.breed,
				age: self.age
			}
			// console.log(newDog);
			$http.post("/api/dogs", newDog)
				.success(function(data){
					console.log("Successfully created dog");
					$window.location.href = ('#/dogs/' + data.id);
				})
				.error(function(data){
					console.log("Something went wrong");
				})
	 		}

	 		///////////////////////////////////////////////////

	 		self.showDog = function(){
	 			var url = "/api/dogs/" + self.params.id;
	 			// console.log(self.params);
	 			// console.log(url);
	 			$http.get(url)
	 				.success(function(data){
	 					console.log("Retrieved dog successfully");
	 					// console.log(data);
	 					self.currentDog = data;
	 				})
	 				.error(function(data){
	 					console.log("Something went wrong");
	 					// consoloe.log(data);
	 				})
	 		}
	 		//////////////////////////////////////////////////////////

	 		self.deleteDog = function(id, index){
	 			var confirmDelete = $window.confirm("Are you sure?");
	 			if(confirmDelete){
	 				var url = "/api/dogs/" + id;
	 				$http.delete(url)
	 					.success(function(data){
	 						console.log("Dog deleted!");
	 						self.jsonDogs.splice(index, 1);
	 					})
	 					.error(function(data){
	 						console.log("Something went wrong")
	 					})
	 			}
	 		}
	}