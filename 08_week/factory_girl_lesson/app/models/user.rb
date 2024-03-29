class User < ActiveRecord::Base
	validates :last_name, presence: true

	def full_name
		"#{self.first_name} #{self.last_name}"
	end
end
