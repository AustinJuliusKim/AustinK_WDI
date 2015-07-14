secret_number = rand(0..10)

while true

user_input = gets().chomp().to_i()

if secret_number == user_input
	puts("Bravo...")
else
	puts("no...")
end

end
end

