class UserMailer < ApplicationMailer
	default from: "info@officiallyA$APaustin.com"

	def welcome_email(user)
		# @user = User.find(params[:id]) in the controller
		@user = user
		# We need to tell this email to send the method
		mail(to: @user.email, subject: "Thanks for signing up!")
	end

	def password_reset(user)
		# Every method that we build out would represent a different type of email that we send to the user
	end
end
