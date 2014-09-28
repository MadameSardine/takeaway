require 'customer'

describe Customer do

	let(:customer) {Customer.new}

	it "should have no order" do
		expect(customer.orders).to be_empty
	end
end