class Song
	include Mongoid::Document
	field :title, type: String
	field :year, type: Integer

	def as_json(options={})
		{
			id: id.to_s,
			title: title,
			artist: "Frank Sinatra",
			year: year
		}
	end

end