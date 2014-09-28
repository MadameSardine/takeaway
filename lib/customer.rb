class Customer

	attr_accessor :orders, :name, :phone

	def initialize(name="NewCustomer", phone=07, orders=[])
		@name = name
		@phone = phone
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