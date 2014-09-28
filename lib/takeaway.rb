class Takeaway

	attr_accessor :customers, :menu

	def initialize(customers=[], menu=Menu.new)
		@customers = customers
		@menu = menu
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
	

end