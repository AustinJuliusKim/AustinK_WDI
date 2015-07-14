#  Let's create a blueprint for persons

class Person
  # How we define objects of this class will behave
  def initialize
     @height = 66 # this is an instance variable
     @mood = "sad"
  end

  def get_height
      puts "my height is #{@height}"
      return @height
 end

 def increase_height
   @height = @height + 1
   return @height
 end

 def set_height(new_height)
  @height = new_height 
 end

 def some_mangoes(num_of_mangoes)
  if num_of_mangoes > 0
    @mood = "happy"
  end
end

def how_are_you
  puts "I am #{@mood}"
end


end



joey = Person.new # create a new object of class Person

joey.get_height()
joey.increase_height()
joey.get_height()

joey.set_height(13)
joey.get_height()

jimmy = Person.new

jimmy.get_height
jimmy.how_are_you
jimmy.some_mangoes(1)
jimmy.how_are_you

puts jimmy.class
puts jimmy.class.superclass
puts jimmy.class.superclass.superclass
