class MySinatraApp < Sinatra::Base
	get "/" do 
		@songs = Song.all 
		erb :home
	end

	get "/api/songs" do
		content_type :json
		@songs = Song.all
		@songs.to_json
	end
	
end