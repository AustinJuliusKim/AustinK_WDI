class FaceSearchController < ApplicationController
	def new
	end

	def show
	end

	def create

		url = params[:search][:url]
		FaceDetectJob.perform_later(url)

		redirect_to root_path
	end
end
