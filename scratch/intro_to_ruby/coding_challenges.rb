# Write a method named 'which_type?' that accepts one parameter. The method should return the data type (a.k.a. 'Class') that the parameter belongs to.

# EXAMPLE

# which_type?([1,2,3]) #=> returns Array
# which_type?({one:1,two:2}) #=> returns Hash
# which_type?(256) #=> returns FixNum

# def which_type?(input)
# 	input.class
# end

# p which_type?(Array(1..10))
# p which_type?({})
# p which_type?("string")
# p which_type?(12345)
# p which_type?(1.22233)

#  end basic data types


# Write a method that accepts two arguments: an array and a hash. Append the contents of the hash to the array.

arr = ['a','b','c','d']
hsh = {'e'=>'f','g'=>'h'}


# new_array(arr,hsh) #=> returns ["a", "b", "c", "d", "e", "f", "g", "h"]
def new_array(array, hash)
	 "hello"
	array + hash.flatten
end
p new_array(arr, hsh)
