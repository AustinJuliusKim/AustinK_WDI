


#check to see that there is a number
# raise error is there is no argument passed

# raise "Please input a cc number" if cc.nil?
# gets.chomp

# cc = ARGV[0]

# if cc.length < 13
# 	puts "Number is too short. Invalid cc number"
# end

# OR
##############################################
cc = ARGV[0]

if ARGV.empty?
	begin
		raise "No cc provided"
	rescue 
		puts "Plese provide a cc number"
		cc = gets.chomp
		if cc.empty?
			raise "Dude you need to put in a cc number"
		end
	end
end

 #############################################
class CreditCard
	def initialized(num)
		@num = num
	end

	def begins_with(str, beg_str)
	#return true if str begins with beg_str
		index = beg_str.length
		str[0...index] == beg_str
	end



	def type
		puts "Let's check the type"
		if cc.length < 13
			puts "Number is too short"
		else
			if ( begins_with(cc, "34") || begins_with(cc, "37") ) && 
				puts "AMEX"
			elsif begins_with(cc, "6011") && cc.length == 16
				puts "Discover"

			end

		end
	end

	def valid?
		#return true if it passes the luhn algorithm
	end
end
##############################################
credit_card = CreditCard.new(cc)
##############################################
puts credit_card.type




