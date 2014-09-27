class Dish

	attr_accessor :name
	attr_accessor :price

	def initialize(name="surprise", price=0.00)
		@name = name
		@price = price
	end

end