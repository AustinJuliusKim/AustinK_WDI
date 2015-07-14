module API
	class MoviesController < ApplicationController
		def index
			render json: Movie.all
		end

		def show
			@movie = Movie.find(params[:id])
			render json: @movie
		end

		def create

		
		end

	end
end