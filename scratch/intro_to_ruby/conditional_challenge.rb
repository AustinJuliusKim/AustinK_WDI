p array_one = Array(1..20)

puts "array length is longer than 10" if array_one.length > 10
puts "array length is shorter than 10" if array_one.length < 10
puts "array length is equal to 10" if array_one.length == 10
puts "array length is not equal to 10" if array_one.length != 10

if array_one.length > 15 
	puts "array length is greater than 15"
elsif array_one.length > 20
	puts "array length is greater than 20"
end

if array_one.length > 12
	puts "array length is greater than 12"
	unless array_one.length > 18
		puts "array length is greater than 18"
	end
end

def my_method(arr)
	arr.first
end

p my_method(array_one)