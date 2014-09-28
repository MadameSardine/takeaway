require 'takeaway'

describe Takeaway do 

	let(:takeaway) {Takeaway.new}
	let(:customer) {double :customer}

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

end