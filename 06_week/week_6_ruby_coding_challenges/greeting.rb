#SPECIAL GREETING
# --

# Claire wants to write a function to greet her friends. But Claire REALLY likes Johnny and she wants to greet him with a special message.

# Write a method that greets Johnny with the message "I love you."

# ***Note!*** The method should return Johnny's special message regardless of capitalization.

# ```
# greet('Glenn')  # "Hello!"
# greet('Johnny') # "I love you"
# greet('johnny') # "I love you"
# greet('jOhNnY') # "I love you"
# ```



def greet(name)
	if name.downcase == "johnny"
		return "I love you"
	else
		return "Hello"
	end
end

p greet('Glenn')

p greet('Johnny') 
p greet('johnny')
p greet('JOHNNY')