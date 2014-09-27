require 'lineitem'

describe LineItem do

	let(:lineitem) {LineItem.new(:dish)}
	let(:dish) {double :dish,  class: Dish }
	
	it "should have a dish" do
		expect(lineitem.dish).not_to be nil
	end

end