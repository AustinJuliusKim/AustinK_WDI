angular
	.module("todoApp")
	.controller("TodosController", TodosController);

	TodosController.$inject = ['$http']

	function TodosController($http){
		var self = this;
		
		self.todoList = getTodos();

		self.text; //bound to input box for new todo
		self.addTodo = addTodo;
		self.deleteTodo = deleteTodo;
		self.completedTodos = completedTodos;
		self.remainingTodos = remainingTodos;

		function getTodos(){
			$http.get("http://localhost:3000/api/todos")
				.success(function(response){
					console.log(response);
				})
				.error(function(response){
					console.log(response);
				});
		}
		//function that allows us to add new todos to our todoList
		function addTodo(){
			self.todoList.push({task: self.text, done: false});
			self.text = null;
		}

		//function that allows us to delete specific todos from our todoList
		function deleteTodo($index){
			self.todoList.splice($index, 1);
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

	}
	