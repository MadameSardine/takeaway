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

	def cancel_order(order_to_cancel)
		orders.reject!{|order| order == order_to_cancel}
	end


end