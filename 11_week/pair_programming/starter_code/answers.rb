# including Ruby's Base64 module will come in handy, but it might not be the only module you need to add
require "base64"

def first_puzzle(enc)
	plain = Base64.decode64(enc)
	plain = plain.split(" ")
	plain[(plain.length-2)]
end

def second_puzzle(arr)
	result = []
	arr.each { |elem| result.push("$#{elem}") }
	return result
end

def third_puzzle(array1,array2)
	result = array1.zip(array2).flatten.compact
	p result
	result.each do |elem|
		if elem % 5 != 0
			return p "All elements are not divisible by 5!"
		end
	end
	result.clear
	p result
	arr1 = []
	arr2 = []
	arr3 = []
	arr4 = []
	arr1.push(array1[0],array2[0])
	arr2.push(array1[1],array2[1])
	arr3.push(array1[2],array2[2])
	arr4.push(array1[3],array2[3])
	result.push(arr1,arr2, arr3, arr4)
	return result
end

def fourth_puzzle
end

def fifth_puzzle
end

def sixth_puzzle
end

def is_prime num
 if num == 1
   return false
 else
   return rec num, num - 1
 end
end

def rec num, i
 if i == 1
   return true
 end
 if num % i == 0
   return false
 else
   return rec num, i - 1
 end
end

p is_prime 21

first_puzzle("UGFydHkgb24gY29kZSE=")
second_puzzle([1, 5, 6.87, 234.32])
third_puzzle([5, 10, 15, 20], [20, 15, 10, 5])
third_puzzle([1, 2, 3, 4, 5], [50, 30, 20, 25, 5])

fourth_puzzle(1000, '+')