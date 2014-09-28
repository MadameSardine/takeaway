class Takeaway

	attr_accessor :customers, :menu, :orders

	def initialize(customers=[], menu=Menu.new, orders=[])
		@customers = customers
		@menu = menu
		@orders = []
	end

	def customer_count
		customers.count
	end

	def add_customer(customer)
		customers << customer
	end

	def remove_customer(customer_to_remove)
		customers.reject!{|customer| customer ==  customer_to_remove}
	end

	def order_count
		orders.count
	end

	def take_order(order)
		orders << order
	end

	def fulfill(order_fulfilled)
		orders.reject!{|order| order ==  order_fulfilled}
	end
	

end