# Takeaway CRC cards

### Takeaway (order, customer, menu)
* has a menu
* take order from a customer
* send text to customer to confirm order (sms module required)

### Customer (order, takeaway)
* should have a name
* should have a phone number

### Menu (dish, takeaway)
* shows list of dishes

### Order (line items, takeaway, customer)
* shows lineitem
* calculates takeaway total
* is linked to a customer

### Lineitem (dish, order)
* has a dish
* has quantity per dish
* calculates total per dish

### Dish (lineitem, order)
* has a name

### SMS module
See Gemfile


