require 'order' 

describe Order do 

	let(:order) {Order.new}
	let(:lineitem) {double :lineitem}

	it "should have no line items" do
		expect(order.lineitem_count).to eq(0)
	end	

	it "can add line items" do
		expect{order.add_lineitem(lineitem)}.to change{order.lineitem_count}.by 1
	end

	it "can remove lineitems" do
		order.add_lineitem(lineitem)
		expect{order.remove_lineitem(lineitem)}.to change{order.lineitem_count}.by -1
	end


end