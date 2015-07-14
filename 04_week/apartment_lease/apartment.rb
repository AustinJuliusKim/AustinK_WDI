class Apartment
	attr_accessor(:floors, :num_of_bedrooms, :sqr_feet, :price_per_month, :unit_number, :leased)
	
	def initialize(options={})
		@floors = options[:floors] || "hardwood"
		@num_of_bedrooms = options[:num_of_bedrooms] || 0
		@sqr_feet = options[:sqr_feet]  || 0
		@price_per_month = options[:price_per_month] || 0
		@unit_number = options[:unit_number] || ""
		@leased = options[:leased] || false
	end
end

apt_one = Apartment.new
apt_two = Apartment.new
apt_three = Apartment.new

class Building
	attr_accessor(:units, :num_of_floors, :building_addresss)
	def initialize(options={})
		@units = []
		@num_of_floors = options[:num_of_floors] || 1
		@building_addresss = options[:building_addresss] || ""
	end

	def num_of_units(units)
		@units.length
	end

	def occupied(units)
		

	def
end

my_first_building = Building.new
p my_first_building