#COFFEESCRIPT

#console.log "Coffeescript!!!"

arg1 = "CoffeeScript var!"
# console.log arg1

glennAwesome = true

# console.log "Awesome CS" if glennAwesome

language = "CS"

# console.log "Language is #{language}" 




# if glennAwesome
# 	console.log "Awesome CS"
# else
# 	console.log "Else statement"

greeting = (text)-> 
	console.log text

greeting "CS function!"

arr = [1..5]

# console.log "CS arr"
# console.log arr

for num in arr 
	console.log "CS! #{num}"

person =
	name: "Glenn"
	age: 18
	occupation: "instructor"

console.log person

