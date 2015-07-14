require('erb') #load the file

my_name = 'Austin Kim'

my_languages = ["JavaScript", "Ruby", "C", "HTML", "CSS", "Java", "C++"]

my_experience = [
	{position: "Programmer", location: "General Assembly", years: "2005-2008"},
	{position: "Consultant", location: "Coffee Solutions Inc.", years: "2009-2014"}
]
#%w( Ruby Python C HTML CSS JavaScript )

my_resume = File.read('resume.erb') #read the file

my_template = ERB.new(my_resume) #create a new template

puts my_template.result(binding)
