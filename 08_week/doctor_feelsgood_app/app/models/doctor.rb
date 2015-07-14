class Doctor < ActiveRecord::Base
	validates :name, presence: true

	def self.active_doctors
		self.where(active: true)
	end
	
	def self.inactive_doctors
		self.where(active: false)
	end
	
end
