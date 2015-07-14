#Get key/value pairs as arrays
# --

# Complete the keysAndValues function so that it takes in a hash and returns the keys and values as separate arrays.

# ```
# keysAndValues({a: 1, b: 2, c: 3}) # should return [[:a, :b, :c], [1, 2, 3]]
# ```



def keys_and_values(input)
	p "The keys are #{input.keys}, an array"
	p "They values are #{input.values}, an array"
	p input.keys.class
	p input.values.class
	[input.keys, input.values]
end

p keys_and_values({a: 1, b: 2, c: 3})

