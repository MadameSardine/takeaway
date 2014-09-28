# Takeaway CRC cards

### Takeaway (order, customer, menu)
* has customers
* has a menu
* can take orders
* send text to customer to confirm order

### Customer (order, takeaway)
* can select dishes from menu
* can place orders at takeaways

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

