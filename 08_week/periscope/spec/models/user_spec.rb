require 'rails_helper'



describe User do
	it "has a valid factory" do
		expect(FactoryGirl.build(:user)).to be_valid
	end

	it "checks for a first_name" do
		user = FactoryGirl.build(:user, {first_name: nil})
		expect(user).to be_invalid
	end

	it "generates a string of a name's initials" do
		user = FactoryGirl.build(:user, {first_name: "Jerry", last_name: "Garcia"})
		expect(user.initials).to eq("JG")
		p user.initials
	end

	it "generates a string with the basic leet version of a full name" do
		user = FactoryGirl.build(:user, {first_name: "Jerry", last_name: "Garcia"})
		expect(user.l33t).to eq("J3I2I2yG4I2C14")
	end
end

