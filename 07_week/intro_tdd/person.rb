# This is the class
class Person
	attr_accessor :face

	def initialize(face=10)
		@face = face
	end	

	def greet
		"hi their neighbor"
	end

	def face
		5
	end

	def body
		'body'
	end


end

# This is the test using rspec
describe Person do
	it 'is polite' do
		tony = Person.new
		expect(tony.greet).to eq('hi their neighbor')
	end

	it 'has a face' do
		tony = Person.new
		expect(tony.face).to_not eq(nil)
	end

	it 'has a body' do
		tony = Person.new
		expect(tony.body).to_not eq(nil)
	end

	context 'Wendell' do
		it 'has a beautiful face' do
			liv = Person.new
			expect(liv.face).to eq(10)
		end
	end

	context 'Jimmy' do
		it 'is a non decapitated human' do
			liv = Person.new
			expect(liv.face).to_not eq(nil)
		end
	end
end