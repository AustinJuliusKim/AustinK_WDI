class Calculator
	# def self.multiply(param)
	# 	param[0] * param[1]
	# end

	def self.multiply(number)
		product = 1
		number.each do |num|
			product  = product * num.to_i
		end
		unless number.empty?
			product
		end
	end
end


# Write a method that takes one parameter ( a two element array ) and multiplies the numbers.

array = [ 3,3,3]

p Calculator.multiply(array)

p []