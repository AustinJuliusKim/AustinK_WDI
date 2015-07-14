require "rails_helper"

RSpec.describe "Movies API" do 

	let(:request_headers) do
		{ "Accept" => "application/json", "Content-type" => "application/json" }
	end

	describe "GET request to api/movies" do
		before do
			# This will create 10 movies
			FactoryGirl.create_list(:movie, 10)
			get "/api/movies"
		end
		# Will retrieve response header = status
		it "responds with a 200 status code" do
			expect(response).to have_http_status(200)
		end
		# Will retrieve response body = JSON
		it "returns a list of movies" do
			movies = JSON.parse(response.body)
			expect(movies.count).to eq(10)
		end
	end

	describe "GET request to api/movies/:id" do
		before do
			# make an instance variable so we can call on its attributes later on
			@movie = FactoryGirl.create(:movie, title: "Star Wars V: The Empire Strikes Back", rating: "PG-13", year: 1986, description: "Darth Vader and the Sith make their move!")
			# We need to use string interpolation to retrieve the movie id, since it changes depending on which movie we want to get
			get "/api/movies/#{@movie.id}"
		end
		# Will retrieve response header = status
		it "responds with a 200 status code" do
			expect(response).to have_http_status 200
		end
		# Will retrieve 
		it "returns a specific movie" do
			expect(response.body).to eq(@movie.to_json)
		end
	end

	# Return data to create a movie from returned JSON data
	describe "a successful POST request to /api/movies" do
		before do
			# This is what we will send
			movie_attributes = { 
				"movie" => FactoryGirl.attributes_for(:movie) 
				}.to_json
			post "/api/movies", movie_attributes, request_headers
		end
		# responds with 201 = created
		it "responds with a 201 status code" do
			expect(response).to have_http_status 201
		end

		it "creates and returns a new movie" do
			movie = JSON.parse(response.body)
			expect(response.location).to eq("http://www.example.com/api/movies/#{movie['id']}")
		end

	end

end