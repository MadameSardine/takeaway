require 'takeaway'

describe Takeaway do 

	let(:takeaway) {Takeaway.new}
	let(:order) {double :order}

	it "should have a menu" do
		expect(takeaway.menu).not_to be nil
	end

	it "shouldn't have orders" do
		expect(takeaway.order_count).to eq(0)
	end

	it "can take an order" do
		expect{takeaway.take_order(order)}.to change{takeaway.order_count}.by 1
	end

	it "can fulfill an order" do
		takeaway.take_order(order)
		expect{takeaway.fulfill(order)}.to change{takeaway.order_count}.by -1
	end

end