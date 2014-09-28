# Takeaway CRC cards

### Takeaway (order, customer, menu, sms)
* has a menu
* can take orders
* send text to customer to confirm order

### Customer (order, takeaway)
* should have a name
* should have a phone number

### Menu (dish, takeaway)
* shows list of dishes

### Order (line items, takeaway, customer, SMS)
* shows lineitem
* calculates takeaway total

### Lineitem (dish, order)
* has a dish
* has quantity per dish
* calculates total per dish

### Dish (lineitem, order)
* has a name

### SMS (order, takeaway)

