class Takeaway

	attr_accessor :customers

	def initialize(customers=[])
		@customers = customers
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