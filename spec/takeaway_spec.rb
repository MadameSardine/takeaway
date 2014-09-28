require 'takeaway'

describe Takeaway do 

	let(:takeaway) {Takeaway.new}

	it "should have no customers" do
	expect(takeaway.customers).to be_empty
	end

end