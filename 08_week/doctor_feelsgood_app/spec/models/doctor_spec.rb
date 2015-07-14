require 'rails_helper'

RSpec.describe Doctor do

  describe "name" do
  	it "is invalid without a name" do
  		doctor = FactoryGirl.build(:doctor, name: nil, specialty: nil, active: true)
  		doctor1 = FactoryGirl.build(:doctor, name: "Glenn", specialty: "Ruby", active: false)
  		expect(doctor).to be_invalid
  		expect(doctor1).to be_valid
  	end
  end

  describe "specialty" do
  	it "is invalid without a specialty" do
  		doctor = FactoryGirl.build(:doctor, name: nil, specialty: nil, active: true)
  		expect(doctor).to be_invalid
  	end
  end

  describe "active status" do
  	it "should be false by default" do
  		doctor = FactoryGirl.build(:doctor, name: "Glenn", specialty: "Ruby")
  		expect(doctor.active).to eq(false)
  	end
end

  describe "if doctor" do
	it "is active" do
		doctor = FactoryGirl.create(:doctor, name: "Shawn Rodriguez", specialty: "markdowns", active: true)
		doctor1 = FactoryGirl.create(:doctor, name: "Glenn Harris", specialty: "labs", active: true)
		doctor2 = FactoryGirl.create(:doctor, name: "Jimmy Garzon", specialty: "improv", active: true)
		p Doctor.active_doctors
		expect(Doctor.active_doctors.length).to eq(3)
	end

	it "is inactive" do
		doctor = FactoryGirl.create(:doctor, name: "Shawn Rodriguez", specialty: "markdowns", active: true)
		doctor1 = FactoryGirl.create(:doctor, name: "Glenn Harris", specialty: "labs", active: false)
		doctor2 = FactoryGirl.create(:doctor, name: "Jimmy Garzon", specialty: "improv", active: true)
		p Doctor.inactive_doctors
		expect(Doctor.inactive_doctors.length).to eq(Doctor.inactive_doctors.length)
	end
end

end
