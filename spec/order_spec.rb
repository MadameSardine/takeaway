require 'order' 

describe Order do 

	let(:order) {Order.new}

	it "should have line items" do
		expect(order.lineitems).not_to be nil
	end	

end