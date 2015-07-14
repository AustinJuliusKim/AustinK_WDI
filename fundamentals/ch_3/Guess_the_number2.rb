secret_number = rand(0..10)

while true

user_input = gets().chomp().to_i

if user_input < secret_number
puts("The number is but larger")
elsif user_input > secret_number
puts("The number is but smaller")
else
 puts("Bravo...")
break
end

end