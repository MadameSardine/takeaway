require 'takeaway'

describe Takeaway do 

	let(:takeaway) {Takeaway.new}
	let(:order) {double :order, grand_total: true}
	let(:customer) {double :customer, name: true}

	it "should have a menu" do
		expect(takeaway.menu).not_to be nil
	end

	it "shouldn't have orders" do
		expect(takeaway.order_count).to eq(0)
	end

	it "can take an order from a customer" do
		expect{takeaway.take_order(order, customer)}.to change{takeaway.order_count}.by 1
	end

	it "can fulfill an order" do
		takeaway.take_order(order, customer)
		expect{takeaway.fulfill(order)}.to change{takeaway.order_count}.by -1
	end

	it "should send a text to customer to confirm order is placed" do
		expect(takeaway).to receive(:send_confirmation)
		takeaway.take_order(order, customer)
	end

end