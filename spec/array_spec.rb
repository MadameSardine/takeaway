require 'array'

describe Array do 

	it "should have a newinject method" do
		expect([1,2,3,4].newinject{|accumulator, element|accumulator + element}).to eq([1,2,3,4].inject{|accumulator, element| accumulator + element})
	end

	it "should have a newinject method which can take an argument" do
		expect([1,2,3,4].newinject(2){|accumulator, element|accumulator + element}).to eq([1,2,3,4].inject(2){|accumulator, element| accumulator + element})
	end
	
end