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
	

end