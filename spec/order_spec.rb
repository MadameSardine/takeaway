require 'order' 

describe Order do 

	let(:order) {Order.new}
	let(:lineitem1) {double :lineitem1, total: 15}
	let(:lineitem2) {double :lineitem2, total: 10}

	it "should have no line items" do
		expect(order.lineitem_count).to eq(0)
	end	

	it "can add line items" do
		expect{order.add_lineitem(lineitem1)}.to change{order.lineitem_count}.by 1
	end

	it "can remove lineitems" do
		order.add_lineitem(lineitem1)
		expect{order.remove_lineitem(lineitem1)}.to change{order.lineitem_count}.by -1
	end

	it "should calculate the order total" do
		order.add_lineitem(lineitem1)
		order.add_lineitem(lineitem2)
		expect(order.grand_total).to eq(lineitem1.total + lineitem2.total)
	end


end