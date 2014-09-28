class Customer

	attr_accessor :orders

	def initialize(orders=[])
		@orders = orders
	end

	def order_count
		orders.count
	end

	def place_order(order)
		orders << order
	end
	
end