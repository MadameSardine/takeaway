# Test interactions for takeaway system

require './lib/dish.rb'
require './lib/lineitem.rb'
require './lib/menu.rb'
require './lib/order.rb'
require './lib/customer.rb'
require './lib/takeaway.rb'

# Create a list of dishes
pizza = Dish.new("Pizza", 9.50)
pasta = Dish.new("Pasta", 11)
tiramisu = Dish.new("Tiramisu", 5.50)
pannacotta = Dish.new("Panacotta", 5)
chianti = Dish.new("Chianti", 35)
housewine = Dish.new("House wine", 18)
bruschetta = Dish.new("Bruschetta", 8)
tricolore = Dish.new("Tricolore", 8)

# Create an 'italian' menu with the dishes above
italian = Menu.new([pizza, pasta, tiramisu, pannacotta, chianti, housewine, bruschetta, tricolore])

# Create an instance of the Takeaway class, named 'daMario', which offers the 'italian' menu for takeaway
daMario = Takeaway.new(italian)

# Create a new customer 'Sandrine'
sandrine = Customer.new("Sandrine", "07000000000")

# Create some line items (i.e. a list of dishes and their quantity)
starter = LineItem.new(bruschetta, 2)
main = LineItem.new(pizza, 2)
dessert1 = LineItem.new(pannacotta, 1)
dessert2 = LineItem.new(tiramisu, 1)
drink = LineItem.new(chianti, 1)

# Create a new order 'sandrinesorder', placed by the customer 'Sandrine' and including the items form the list above
sandrinesorder = Order.new(sandrine, [starter, main, dessert1, dessert2, drink])

# Print daMario's menu for takeaway
puts "daMario's Italian takeaway menu:"
italian.dishes.each do |dish|
	puts " #{dish.name}, cost: £#{dish.price}"
	end

# Print daMario's current open orders (should be equal to zero)
puts "daMario has currently #{daMario.order_count} open orders."

# Print the list of items ordered by the customer, with a subtotal per item, and a grand total for the order
puts "daMario takes the following order from #{sandrine.name}:"
sandrinesorder.lineitems.each do |lineitem|
	puts "#{lineitem.quantity} #{lineitem.dish.name} = £#{lineitem.total}"
	end
puts "Total to pay = £#{sandrinesorder.grand_total}"

# daMario takes the order, test that the order number increments by 1 and that a text is sent to confirm the order
daMario.take_order(sandrinesorder, sandrine)
puts "daMario has now currently #{daMario.order_count} open orders"
puts "daMario send a text to #{sandrine.name} to confirm the order has been placed"

#daMario fulfills the order, test that the order number decreases by 1
daMario.fulfill(sandrinesorder)
puts "After fulfilling #{sandrine.name}'s order, daMario has #{daMario.order_count} open orders."