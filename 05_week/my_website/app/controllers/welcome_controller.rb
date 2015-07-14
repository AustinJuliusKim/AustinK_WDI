class WelcomeController < ApplicationController
	def index
		@my_name = 'Austin Kim'
		@my_languages = ["JavaScript", "Ruby", "C", "HTML", "CSS", "Java", "C++"]
		@my_experience = [
	{position: "Programmer", location: "General Assembly", years: "2005-2008"},
	{position: "Consultant", location: "Coffee Solutions Inc.", years: "2009-2014"}
]
	end
end