require 'rails_helper'

RSpec.describe Product, type: :model do
  
  describe "product attributes required?" do
  
  	it "returns name" do
  		product = FactoryGirl.build_stubbed(:product, name: nil)
  		p product
  		expect(product).to be_invalid
	end

	it "returns sku" do
		product = FactoryGirl.build_stubbed(:product, sku: nil)
		p product
		expect(product).to be_invalid
	end

	it "has sku that is exactly 9 characters" do
		product = FactoryGirl.build_stubbed(:product, sku: "12345678")
		expect(product.sku.length).to_not eq(9)
	end

	it "returns wholesale_price" do
		product = FactoryGirl.build_stubbed(:product, wholesale_price: nil)
		p product
		expect(product).to be_invalid
	end

	it "returns quantity" do
		product = FactoryGirl.build_stubbed(:product, quantity: nil)
		p product
		expect(product).to be_invalid
	end
end
  
 describe "product is?" do
  	it "is in stock?" do
  		product = FactoryGirl.build_stubbed(:product, quantity: 0)
  		expect(product.in_stock?).to eq(false)
  	end

  	it "has a margin of?" do
  		product = FactoryGirl.build_stubbed(:product, wholesale_price: 500.99, retail_price: 599.99)
  		expect(product.margin?).to eq(99.00)
  	end

  	it "sells(qty) or declines sale based on insufficient stock" do
  		product = FactoryGirl.build_stubbed(:product, quantity: 49)
  		expect(product.sell(50)).to eq("Cannot fulfill this order.")
  	end
end
	
	describe "if product" do
		it "is in stock" do
			product = FactoryGirl.create(:product, name: "Ping Pong Balls", quantity: 50)
			product1 = FactoryGirl.create(:product, name: "Table", quantity: 0)
			product2 = FactoryGirl.create(:product, name: "Red Cups", quantity: 20)
			expect(Product.in_stock).to eq([product, product2])
		end

		it "is not in stock" do
			product = FactoryGirl.create(:product, name: "Ping Pong Balls", quantity: 50)
			product1 = FactoryGirl.create(:product, name: "Table", quantity: 0)
			product2 = FactoryGirl.create(:product, name: "Red Cups", quantity: 20)
			expect(Product.out_of_stock).to eq([product1])
		end
	end
end
