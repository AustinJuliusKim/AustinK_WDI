require_relative '../lib/calculator.rb'

describe Calculator do
	describe ".multiply" do
		it "multiplies an array of numbers" do
			arr = [2, 5, 6]
			expect(Calculator.multiply(arr)).to eq(60)
		end

		it "accepts string numbers" do
			expect(Calculator.multiply(["2", "8", "1"])).to eq(16)
		end

		it "accepts mixed input" do
			expect(Calculator.multiply(["3", 3 , 4])).to eq(36)
		end

		it "returns nil when an empty array is passed" do
			expect(Calculator.multiply([])).to be_nil
		end
	end
end