# Takeaway CRC cards

### Takeaway (order, customer, menu)
* can have, add and remove customers
* has a menu
* can take orders
* send text to customer to confirm order

### Customer (order, takeaway)
* should have a name
* should have a phone number
* can select dishes from menu
* can place an order
* can cancel/remove an order

### Menu (dish)
* shows list of dishes

### Order (line items, takeaway, customer)
* shows lineitem
* calculates takeaway total

### Lineitem (dish, order)
* has a dish
* has quantity per dish
* calculates total per dish

### Dish (lineitem, order)
* has a name
* has a price

