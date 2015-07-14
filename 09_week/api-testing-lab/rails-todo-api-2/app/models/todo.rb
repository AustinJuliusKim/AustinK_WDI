class Todo < ActiveRecord::Base
	validates :task, presence: true

	def as_json(options={})
		super(:except => [:created_at, :updated_at])
	end
end
