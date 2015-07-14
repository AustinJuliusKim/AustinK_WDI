# if (true) {
# 	# do something
# }
# else if (true) {
# 	#do something else
# }
# else {
# 	# do something
# }

n = 2

if n < 2
	puts "less than 2"
elsif n == 2
	puts "It's two"
else
	puts "greater than two!"
end

puts "less than 2" if n < 2
puts "It's two" if n == 2
puts "greater than two" if n > 2


x = true
puts "its true!" if x != false
puts "it's true" unless x == false