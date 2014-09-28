require 'sms'

describe Sms do

	let(:sms) {Sms.new}

	it "should be sent from the takeaway number" do
		expect(sms.sender_number).to eq("+44 1274 451678")
	end

	it "should contain information about the order" do
		expect(sms.content).to eq("Your order was placed and will be delivered in the next 20 minutes. Thank you for your custom!")
	end


end