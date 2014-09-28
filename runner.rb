require './lib/dish.rb'
require './lib/lineitem.rb'
require './lib/menu.rb'
require './lib/order.rb'
require './lib/customer.rb'
require './lib/takeaway.rb'

daMario = Takeaway.new(italian_menu)

italian_menu = Menu.new([pizza, pasta, tiramisu, pannacotta, chianti, housewine, bruschetta, tricolore])

pizza = Dish.new("Pizza", 11)
pasta = Dish.new("Pasta", 13)
tiramisu = Dish.new("Tiramisu", 5)
pannacotta = Dish.new("Panacotta", 5)
chianti = Dish.new("Chianti", 35)
housewine = Dish.new("House wine", 18)
bruschetta = Dish.new("Bruschetta", 8)
tricolore = Dish.new("Tricolore", 8)

sandrine = Customer.new("Sandrine", "07000000000")

sandrinesorder = Order.new([starter, main, dessert1, dessert2, drink])

starter = LineItem.new(bruschetta, 2)
main = LineItem.new(pizza, 2)
dessert1 = LineItem.new(pannacotta, 1)
dessert2 = LineItem.new(tiramisu, 1)
drink = LineItem.new(chianti, 1)

daMario.take_order(sandrinesorder)
# daMario.confirm_order(sandrinesorder)
daMario.fulfill(sandrinesorder)