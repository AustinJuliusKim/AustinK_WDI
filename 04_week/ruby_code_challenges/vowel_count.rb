# #VOWEL COUNT
# ---
# Return the number(count) of vowels in the given string. We will consider a, e, i, o, and u as vowels for this kata.

# ***EXAMPLE***

# ```
# vowel_count("I love chocolate chip cookies") #=> returns 11
# ```

def vowel_count(string)
	counter = 0
	letters = string.split("")
	letters.each do |letter|
		if letter == "a"
			counter += 1
		elsif letter == "e"
			counter += 1
		elsif letter == "i"
			counter += 1
		elsif letter == "o"
			counter += 1
		elsif letter == "u"
			counter += 1
		end
	end
	p counter
end

vowel_count("i love chocolate chip cookies")