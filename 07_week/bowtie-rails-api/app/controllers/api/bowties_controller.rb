module API
	class BowtiesController < ApplicationController
		protect_from_forgery with: :null_session

		def index
			render json: Bowtie.all
		end

		def show
			render json: Bowtie.find(params[:id])
		end

		def create
			bowtie = Bowtie.new(bowtie_params)

			if bowtie.save
				render json: bowtie, status: 201, location: [:api, bowtie]
			else
				render json: bowtie.errors, status: 422
			end
		end

		private
		def bowtie_params
			params.require(:bowtie).permit(:material, :pattern, :style, :image_url, :wholesale_price, :retail_price)
		end
	end
end