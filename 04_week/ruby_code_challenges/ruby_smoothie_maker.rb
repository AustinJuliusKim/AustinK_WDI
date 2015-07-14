#Ruby Smoothie Maker
# 1. Create a method 'blend' that takes an array of ingredients and returns a mixed string of characters, with NO spaces

# 2. Create a class called Blender, and define the blend method within this class

# 3. Blend the ingredients array

# 4. Challenge add on: Give the blender an on and off switch and only allow the blender to function when it's on.

# FOR SAFETY'S SAKE When you create a new blender (initialize) by default it should be off.

# 5. Blend the ingredients array again, first making use of the new safety feature (ie don't forget to switch the blender on!).

class Blender
	def initialize(power = false)
		@power = power	
	end

	def power
		puts "I'm getting"
		@power
	end

	def power=(value)
		puts "I'm setting"
		@power = value
	end

	def blend(array)
		puts "blender is off" if @power == false
		array.join.split(' ').join.split('').shuffle.join if @power == true
	end



end
