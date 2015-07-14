require 'rails_helper'

RSpec.describe User, type: :model do
  
 it "should have a user named Glenn" do
  	user1 = FactoryGirl.create(:user, first_name: "Glenn")
  	# user2 = FactoryGirl.build_stubbed(:user, first_name: "Glenn")
  	# user3 = FactoryGirl.build(:user, first_name: "Glenn")
  	# p user1
  	# p user2
  	# p user3
  	expect(user1.first_name).to eq("Glenn")

 end

describe "#last_name" do
	it "should return the last name of the user" do
		user = FactoryGirl.build_stubbed(:user, last_name: "Harris")
		p user
		expect(user.last_name).to eq("Harris")
	end
end

describe "#full_name" do
	it "should return the full name of the user" do
		user = FactoryGirl.build_stubbed(:user, first_name: "Barack", last_name: "Obama")
		p user
		expect(user.full_name).to eq("Barack Obama")
	end
end


end
