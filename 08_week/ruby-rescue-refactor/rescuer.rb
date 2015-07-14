age = 15

def drink(age)
	begin
		puts "Lets check if you can drink"
		raise "You're not allowed to dirnk" if age < 21
	rescue
		puts "you can move to Europe"
	end
	"I am drunk"
end

puts drink(20)
