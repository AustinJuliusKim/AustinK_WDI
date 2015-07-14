module API
	class UsersController < ApplicationController
		def index
			render json: User.all
		end

		def show
			render json: User.find(params[:id])
		end

		def new

		end

		def create
			@user = User.new(user_params)
			if @user.save
				render json: @user, status: 201
			else
				render json: {errors: @user.errors}, status: 422
			end
		end

		def update
			@user = User.find(params[:id])
			if @user.update(user_params)
				render json: @user, status: 200
			else
				render json: {errors: @user.erros}, status: 422
			end
		end

		def edit

		end

		def destroy

		end

		private
		def user_params
			params.require(:user).permit(:company_name, :address)
		end

	end
end