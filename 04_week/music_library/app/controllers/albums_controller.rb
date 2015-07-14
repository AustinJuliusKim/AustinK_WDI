class AlbumsController < ApplicationController
	def index
		@albums = Album.all
		render :index
	end

	def new
		@album = Album.new
	end

	def create
		@album = Album.new(params.require(:album).permit(:title, :artist, :rating, :num_tracks))
		
		if @album.save
			redirect_to albums_path
		else
			render :new
		end
	end

end
