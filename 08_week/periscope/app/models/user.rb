class User < ActiveRecord::Base
	validates :first_name, presence: true

	def initials
		first_name[0] + last_name[0]
	end

	def l33t
		# use gsub or inject
		h4x = ""
		full_name = "#{first_name} #{last_name}"
		full_name = full_name.split
		full_name = full_name.join
		full_name = full_name.split("")
		full_name.each do |letter|
			unless letter != "e" || "r" || "a"|| "i" 
				h4x += letter
			end
			if letter == "e"
					letter = "3"
					h4x += letter
				elsif letter == "r"
					letter = 'I2'
					h4x += letter
				elsif letter == "a"
					letter = '4'
					h4x += letter
				elsif letter == "i"
					letter = '1'
					h4x += letter
				end
		puts h4x
		end
	end
end


