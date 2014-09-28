class Order

	attr_accessor :lineitems, :customer

	def initialize(customer=Customer.new, lineitems=[])
		@customer = customer
		@lineitems = lineitems
	end

	def add_lineitem(lineitem)
		lineitems << lineitem
	end

	def remove_lineitem(lineitem_to_remove)
		lineitems.reject!{|lineitem| lineitem == lineitem_to_remove }
	end

	def lineitem_count
		lineitems.count
	end

	def grand_total
		lineitems.map{|lineitem| lineitem.total}.inject(&:+)
	end


end