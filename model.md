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

### Order (line items, takeaway)
* shows line items
* calculates takeaway total

### Line item (dish, order)
* has a dish
* has quantity per dish
* calculates total per dish

### Dish (line order)
* has a name
* has a price

