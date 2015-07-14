module API
	class TodosController < ApplicationController
		protect_from_forgery with: :null_session
		def index
			render json: Todo.all
		end

		def show
			render json: Todo.find(params[:id])
		end

		def create
			todo = Todo.new(todo_params)

			if todo.save
				render json: todo, status: 201, location: [:api, todo]
			else
				render json: todo.errors, status: 422
			end
		end

		def update
			todo = Todo.find(params[:id])
			if todo.update(todo_params)
				head 204
			end
		end

		def destroy
			Todo.find(params[:id]).destroy
			head 204
		end

		private
		def todo_params
			params.require(:todo).permit(:task, :done)
		end	
	end
end