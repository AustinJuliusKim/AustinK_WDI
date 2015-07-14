class Movie < ActiveRecord::Base
	validates :title, presence: true

	def as_json(options={})
		super(:except => [:created_at, :update_at ])
	end
end
