class Menu

	attr_accessor :dishes

	def initialize(dishes=[])
		@dishes = dishes
	end

	def dish_count
		dishes.count
	end

	def add_dish(dish)
		@dishes << dish
	end

	def remove_dish(dish_to_remove)
		dishes.reject! {|dish| dish == dish_to_remove}
	end


end