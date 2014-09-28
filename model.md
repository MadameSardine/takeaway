# Takeaway CRC cards

### Takeaway (order, customer, menu)
* has a menu
* take order from a customer
* send text to customer to confirm order (sms module required)

### Customer (order, takeaway)
* has a name
* has a phone number

### Menu (dish, takeaway)
* has a list of dishes

### Order (lineitem, takeaway, customer)
* has a list of lineitems
* calculates takeaway total
* is linked to a customer

### Lineitem (dish, order)
* has a dish
* has a quantity per dish
* calculates a total per dish

### Dish (lineitem, order)
* has a name
* has a price

### SMS module
See [Gemfile](https://github.com/MadameSardine/takeaway/blob/master/Gemfile)


