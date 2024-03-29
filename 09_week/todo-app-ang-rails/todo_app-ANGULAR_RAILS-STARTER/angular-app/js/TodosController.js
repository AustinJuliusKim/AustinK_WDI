angular
	.module("todoApp")
	.controller("TodosController", TodosController);

	TodosController.$inject = ['$http'];

	function TodosController($http){
		var self = this;
		
		self.todoList = getTodos();

		self.text; //bound to input box for new todo
		self.addTodo = addTodo;
		self.updateTodo = updateTodo;
		self.deleteTodo = deleteTodo;
		self.completedTodos = completedTodos;
		self.remainingTodos = remainingTodos;


		function getTodos(){
			$http.get('http://localhost:3000/api/todos')
				.success(function(response){
					self.todoList = response;
				})
				.error(function(response){
					console.log(response);
				})
		}


		//function that allows us to add new todos to our todoList
		function addTodo(){
			var newTodo = { task: self.text, done: false }


			$http.post("http://localhost:3000/api/todos", {todo: newTodo})
				.success(function(response){
					self.todoList.push(response);
				})
				.error(function(response){
					console.log(response);
				})
				self.text = null;
		}

		//function allows us to update our todo object
		function updateTodo(todo){
			$http.patch("http://localhost:3000/api/todos/" + todo.id, {todo: todo})
				.success(function(response, status){
					console.log("update successful");
					console.log(response);
					console.log(status);
				})
				.error(function(response){
					console.log(response);
				})
		}
		//function that allows us to delete specific todos from our todoList
		function deleteTodo(todo){
			$http.delete("http://localhost:3000/api/todos/" + todo.id)
				.success(function(response, status){
					console.log("HTTP status code: " + status);
					self.todoList.splice(self.todoList.indexOf(todo), 1);
				})
				.error(function(response){
					console.log(response);
				})

		}

		//returns a count of the tasks that have been marked as done
		function completedTodos(){
			var count = 0;
			for(var i = 0; i < self.todoList.length; i++){
				if(self.todoList[i].done){
					count++;
				}
			}
			return count;
		}

		//returns a count of the tasks that have not been marked as done
		function remainingTodos(){
			var count = 0;
			for(var i = 0; i < self.todoList.length; i++){
				if(self.todoList[i].done === false){
					count++;
				}
			}
			return count;
		}

		// 

	}
	