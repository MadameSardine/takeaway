class Order

	attr_accessor :lineitems

	def initialize(lineitems=[])
		@lineitems = lineitems
	end

end