require "rails_helper"

RSpec.describe User do 
	# This is called a RSpec example or specification (spec) or test
	it "is invalid without a first name" do
		user = User.new(first_name: nil, last_name: "Smith", email: "roger@example.com")
		expect(user).to be_invalid
	end

	it "is invalid without a last name" do
		user = User.new(first_name: "Roger", last_name: nil, email: "roger@example.com")
		expect(user).to be_invalid
	end



	it "returns a user's full name as a string" do
		user = User.new(first_name: "Roger", last_name: "Smith", email: "roger@example.com")
	expect(user.full_name).to eq "Roger Smith"
	end

	it "is invalid if a user tries to signup with an email that already exists in the db, regardless of capitalization" do
		user1 = User.create(first_name: "Roger", last_name: "Smith", email: "roger@example.com")
		user3 = User.new(first_name: "Bill", last_name: "Smith", email: "ROGER@example.com")
		user2 = User.new(first_name: "Will", last_name: "Smith", email: "roger@example.com")
		expect(user1).to be_valid
		expect(user2).to be_invalid
		expect(user3).to be_invalid
	end

	it "is invalid without an email address" do
		user = User.new(first_name: "Roger", last_name: "Smith", email: nil)
		expect(user).to be_invalid
	end

	it "is invalid if email isn't formatted properly" do
		user = User.new(first_name:"Roger", last_name: "Smith", email: "asdlk;@")
		expect(user).to be_invalid
	end
end