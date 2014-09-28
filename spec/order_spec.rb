require 'order' 

describe Order do 

	let(:order) {Order.new}
	let(:lineitem) {double :lineitem}

	it "should have line items" do
		expect(order.lineitems).not_to be nil
	end	

	it "can add line items" do
		expect{order.add_lineitem(lineitem)}.to change{order.lineitems.count}.by 1
	end

end