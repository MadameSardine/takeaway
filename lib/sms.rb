require 'twilio-ruby'

module Sms

	def send_confirmation(order, customer)

		# To find these visit https://www.twilio.com/user/account
		account_sid = "AC5be1deef516b5c7bffe5703daee8025d"
		auth_token = "b04595e434a81a21596f6b9d374c51da"

		@client = Twilio::REST::Client.new account_sid, auth_token

		@message = @client.account.messages.create({:to => "+447812832895", :from => "+44 1274 451678", :body => "Dear #{customer.name}, thank you for your order! Your delicious healthy meal will be delivered in the next 20 minutes. It will cost £#{order.grand_total}."})
	end


end
