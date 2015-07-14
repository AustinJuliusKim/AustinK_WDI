# # Array to Hash
# --

# Create a method to_h that accepts a nested array, and converts it to a hash of key-value pairs.

# ```
# animals = [["cat", "dog"], ["duck", "cow"]]

# to_h(animals)
#     #=> {"cat" => "dog", "duck" => "cow"}
# ```


# def to_h(input)
# 	*input
# end

animals = [["cat", "dog"], ["duck", "cow"]]


# h = Hash[*animals]

# print h

def to_h(input)
	Hash[*input]
end

print to_h(animals)
