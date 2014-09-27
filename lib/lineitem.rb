class LineItem

	attr_accessor :dish, :quantity

	def initialize(dish=Dish.new, quantity=0)
		@dish = dish
		@quantity = quantity
	end

end