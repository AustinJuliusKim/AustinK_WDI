# #BASIC DATA TYPES
# ---
# Write a method named 'which_type?' that accepts one parameter. The method should return the data type (a.k.a. 'Class') that the parameter belongs to.

# ***EXAMPLE***

# ```
# which_type?([1,2,3]) #=> returns Array
# which_type?({one:1,two:2}) #=> returns Hash
# which_type?(256) #=> returns FixNum

# ```

def which_type?(input)
	input.class
end

p which_type?([1,2,3])
p which_type?({one:1, two:2})
p which_type?(256)