require 'takeaway'

describe Takeaway do 

	let(:takeaway) {Takeaway.new}
	let(:customer) {double :customer}
	let(:order) {double :order}

	it "should have no customers" do
		expect(takeaway.customers).to be_empty
	end

	it "can have a customer" do
		expect{takeaway.add_customer(customer)}.to change{takeaway.customer_count}.by 1
	end

	it "can remove a customer" do
		takeaway.add_customer(customer)
		expect{takeaway.remove_customer(customer)}.to change{takeaway.customer_count}.by -1
	end

	it "should have a menu" do
		expect(takeaway.menu).not_to be nil
	end

	it "shouldn't have orders" do
		expect(takeaway.order_count).to eq(0)
	end

	it "can take an order from a customer" do
		expect{takeaway.take_order(order)}.to change{takeaway.order_count}.by 1
	end

	it "can fulfill an order" do
		takeaway.take_order(order)
		expect{takeaway.fulfill(order)}.to change{takeaway.order_count}.by -1
	end

end