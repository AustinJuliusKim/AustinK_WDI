class Building
	attr_accessor(:units, :num_of_floors, :building_addresss)
	def initialize(options={})
		@units = []
		@num_of_floors = options[:num_of_floors] || 1
		@building_addresss = options[:building_addresss] || ""
	end
end

