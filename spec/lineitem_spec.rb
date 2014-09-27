require 'lineitem'

describe LineItem do

	let(:lineitem) {LineItem.new}
	let(:dish) {double :dish,  class: Dish }
	
	it "should have a dish" do
		expect(lineitem.dish).not_to be nil
	end

	it "should show a quantity" do
		expect(lineitem.quantity.class).to eq(Fixnum)
	end

	it "should calculate a total cost" do
		expect(lineitem.total).to eq(lineitem.quantity * lineitem.dish.price)
	end

end