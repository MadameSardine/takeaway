class Order

	attr_accessor :lineitems

	def initialize(lineitems=[])
		@lineitems = lineitems
	end

	def add_lineitem(lineitem)
		lineitems << lineitem
	end

end