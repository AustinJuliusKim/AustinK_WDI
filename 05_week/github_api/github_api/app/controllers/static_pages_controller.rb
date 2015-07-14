class StaticPagesController < ApplicationController
	def index
		@students = HTTParty.get("https://api.github.com/teams/1365559/members?access_token=ac26a9be4540039b4692beea74209de0a520d2bd")

	end

end
