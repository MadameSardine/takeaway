require_relative 'sms'

class Takeaway

	include Sms

	attr_accessor :menu, :orders

	def initialize(menu=Menu.new, orders=[])
		@menu = menu
		@orders = []
	end

	def order_count
		orders.count
	end

	def take_order(order, customer)
		orders << order
		send_confirmation(order, customer)
	end

	def fulfill(order_fulfilled)
		orders.reject!{|order| order ==  order_fulfilled}
	end

end