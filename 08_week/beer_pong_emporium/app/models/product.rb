class Product < ActiveRecord::Base
	validates :name, presence: true
	validates :sku, presence: true, length: { is: 9 }	
	validates :wholesale_price, presence: true
	validates :quantity, presence: true

	def self.in_stock
		self.where.not(quantity: 0)
	end

	def self.out_of_stock
		self.where(quantity: 0)
	end

	def in_stock?
		if self.quantity == 0
			return false
		else
			return true
		end
	end

	def margin?
		self.retail_price - self.wholesale_price
	end

	def sell(qty)
		unless qty > self.quantity
			self.quantity = self.quantity - qty 
			return "Thank you for your purchase"
		end
		return "Cannot fulfill this order."
	end
end
