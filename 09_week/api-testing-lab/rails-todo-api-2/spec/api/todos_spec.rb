require "rails_helper"

RSpec.describe "Todos API" do

	let(:request_headers) do
		{ "Accept" => "application/json", "Content-type" => "application/json" }
	end

	describe "GET request to api/todos" do
		before do
			FactoryGirl.create_list(:todo, 10)
			get "/api/todos"
		end
	
		it "responds with a 200 status code" do
			expect(response).to have_http_status 200
		end

		it "returns a list of todo" do
			todos = JSON.parse(response.body)
			expect(todos.count).to eq(10)
		end
	end

	describe "GET request to api/todos/" do
		before do
			@todo = FactoryGirl.create(:todo)
			get "/api/todos/#{@todo.id}"
		end	

		it "responds with a 200 status code" do
			expect(response).to have_http_status 200
		end

		it "returns a specific todo" do
			expect(response.body).to eq(@todo.to_json)
		end
	end

	describe "a successful POST request to /api/todos" do
		before do
			todo_attributes = { "todo" => FactoryGirl.attributes_for(:todo) }.to_json
			post "/api/todos", todo_attributes, request_headers
		end

		it "responds with a 201 status code" do
			expect(response).to have_http_status 201
		end

		it "creates a new movie" do
			todo = JSON.parse(response.body)
			expect(response.location).to eq("http://www.example.com/api/todos/#{todo['id']}")
		end
	end

	describe "an unsuccessful POST request to /api/todos" do
		before do
			todo_attributes = { "todo" => FactoryGirl.attributes_for(:todo, task: nil) }.to_json
			post "/api/todos", todo_attributes, request_headers
		end

		it "responds with a 422 status code" do
			expect(response).to have_http_status 422
		end

		it "responds with error messages" do
			errors = JSON.parse(response.body)
			expect(errors.count).to eq(1)
		end
	end

	describe "a successful PATCH request to /api/todos" do
		before do
			@todo = FactoryGirl.create(:todo)
			todo_attributes = { "todo" => { "done":  true } }.to_json
			patch "/api/todos/#{@todo.id}", todo_attributes, request_headers
		end

		it "responds with a 204 status code" do
			expect(response).to have_http_status 204
		end

		it "updates a todo's attributes" do
			expect(@todo.reload.done).to eq(true)
		end
	end

	describe "DELETE request to /api/todos/:id" do
		before do
			todo = FactoryGirl.create(:todo)
			@num_todos = Todo.count
			delete "/api/todos/#{todo.id}"
		end

		it "destroys a movie" do
			expect(Todo.count).to eq(@num_todos -1)
		end

		it "responds with a 204 status code" do
			expect(response).to have_http_status 204
		end
	end
end