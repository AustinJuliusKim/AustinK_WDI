puts("Please enter a number, Mr. Kim.")
first_number = gets().chomp().to_i

puts("Please choose an operation: ( add , subtract , multiply , divide ).")
operator = gets().chomp().to_i
add = 0
subtract = 1
multiply = 2
divide = 3


puts("Input a final number.")
second_number = gets().chomp().to_i

puts("You've inputted " + first_number + "and " + second_number + "!")

if operator == 0
	puts("first_number + second_number")
elsif operator == 1
	puts("first_number - second_number")
elsif operator == 2
	puts("first_number - second_number")
elsif operator == 3
	puts("first_number / second_number")
else
	puts("I don't understand that operator.")
end

puts("Your final answer is" + "first_number + operator + second_number")

