puts("Choose a direction, up or down.")
direction = gets().chomp().to_i()
up = 0
down = 1

if direction == 0
	puts("We're headed up the mountain!")
elsif direction == 1
	puts("We're headed down into the cave!")
else
	puts("That's not where we want to go!")
end


puts("Choose a number between 1 and 100.")
NUMBER = gets().chomp().to_i()

# How do i store the mountain as a User_location

# How do i store "NUMBER" as a variable

if NUMBER == 100
	puts("You've achieved enlightment in the USER_LOCATION! Spread joy around the world!")
elsif 50 <= NUMBER < 100
	puts("There are [NUMBER] goblins in the USER_LOCATION. We must fight!")
elsif 20 <= NUMBER < 50
	puts("It's been a long passage! There is still hope that we will make it to the USER_LOCATION before the [NUMBER] Snifflebums get us!")
else Number <= 20
	puts("We have conquered the Goon Squad of the USER_LOCATION. It only took us [NUMBER] of years!!!")
end


