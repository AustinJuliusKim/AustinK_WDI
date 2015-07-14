# #DO YOU PLAY BANJO?
# ---

# Create a function named 'plays_banjo?' which answers the question "Do you play Banjo?". If your name starts with the letter "R" or lower case "r", you are playing Banjo!

# ***Example***

# ```
# plays_banjo?('Glenn') #=> "Glenn does not play banjo"
# plays_banjo?('Ricardo') #=> "Ricardo plays banjo"

# ```

def plays_banjo?(name)
	rename = name.split("")
	if rename[0].capitalize == "R"
		puts name + " plays banjo"
	else
		puts name + " does not play banjo"
	end
end

p plays_banjo?("rabbit")