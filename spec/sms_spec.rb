require 'sms'

describe Sms do

	let(:sms) {Sms.new}

	it "should be sent from the takeaway number" do
		expect(sms.sender_number).to eq("+44 1274 451678")
	end


end