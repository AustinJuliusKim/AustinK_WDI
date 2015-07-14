require 'rails_helper'

RSpec.describe DoctorsController, type: :controller do

  describe "GET #index" do
    before do
      get :index
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "should assign @doctors to list all doctors" do
      @doctor1 = FactoryGirl.create(:doctor)
      @doctor2 = FactoryGirl.create(:doctor)
      expect(assigns(:doctors)).to include(@doctor1, @doctor2) 
    end
  end

  describe "GET #show" do
    before do
      get :show
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "should assign @doctor a single doctor" do 
      expect(assigns(:doctor)).to eq(doctor)
    end
  end

end
