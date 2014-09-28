class Order

	attr_accessor :lineitems

	def initialize(lineitems=[])
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