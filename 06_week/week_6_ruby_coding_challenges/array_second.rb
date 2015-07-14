# #Array#second
# --

# Define a new instance method on the Array class called second, which returns the second item in an array (similar to the way .first and .last work in Ruby).

# If there is no element with index 1 in the array, return nil.

# ```
# [3, 4, 5].second 
# # => 4 

# [].second 
# # => nil
# ```
class Array
	def second
		p self[1]
	end
end

[3, 4, 5].second

 [].second