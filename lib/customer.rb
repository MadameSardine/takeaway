class Customer

	attr_accessor :orders

	def initialize(orders=[])
		@orders = orders
	end

end