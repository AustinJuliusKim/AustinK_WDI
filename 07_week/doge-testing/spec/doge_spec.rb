require_relative '../lib/doge.rb'

describe Doge do

	describe '#legs' do
		it "has 4 legs" do
			doge = Doge.new
			expect(doge.legs).to eq(4)
		end
	end

	describe '#eyes' do
		it "has 2 eyes" do
			doge = Doge.new
			expect(doge.eyes).to eq(2)
		end
	end
end