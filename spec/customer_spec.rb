require 'customer'

describe Customer do

	let(:customer) {Customer.new}

	it "should have a name" do
		expect(customer.name).not_to be_nil
	end

	it "should have a phone number" do
		expect(customer.phone).not_to be_nil
	end
end