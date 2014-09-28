require 'sms'

describe Sms do

	let(:sms) {Sms.new(:order)}
	let(:sandrinesorder) {double :order, customer: Sandrine}

	it "should be sent from the takeaway number" do
		expect(sms.sender_number).to eq("+44 1274 451678")
	end


	it "should give a reference to the order" do
		expect(sms.order).not_to be nil
	end

	it "should confirm the order" do
		sms = Sms.new(:sandrinesorder)
		expect(sms.content).to eq("Your order (sandrinesorder) was placed and will be delivered in the next 20 minutes. Thank you for your custom!")
	end


end