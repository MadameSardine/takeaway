class LineItem

	attr_accessor :dish, :quantity

	def initialize(dish=Dish.new, quantity=0)
		@dish = dish
		@quantity = quantity
	end

	def total
		dish.price * quantity
	end

end