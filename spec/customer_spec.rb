require 'customer'

describe Customer do

	let(:customer) {Customer.new}
	let(:order) {double :order}

	it "should have no order" do
		expect(customer.orders).to be_empty
	end

	it "can place an order" do
		expect{customer.place_order(order)}.to change{customer.order_count}.by 1
	end

	it "can cancel an order" do
		customer.place_order(order)
		expect{customer.cancel_order(order)}.to change{customer.order_count}.by -1
	end

	it "should have a name" do
		expect(customer.name).not_to be_nil
	end
end