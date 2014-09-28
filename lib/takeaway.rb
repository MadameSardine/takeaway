class Takeaway

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
	end

	def fulfill(order_fulfilled)
		orders.reject!{|order| order ==  order_fulfilled}
	end

	def send_confirmation(order, customer)
		true
	end
	
end