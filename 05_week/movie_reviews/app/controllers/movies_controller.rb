class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def show
		@movie = Movie.find(params[:id])
		@review = Review.new
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(params.require(:movie).permit(:title, :rating, :year, :description))

		if @movie.save
			redirect_to movie_path(@movie)
		else
			render :new
		end
	end
end
