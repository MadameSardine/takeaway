# Takeaway Challenge
#### (Makers Academy Week 2 Test)

## Task 1

* Reopen the Array class or subclass it.
* Rewrite the inject method. Write a test for it first. Don't worry about returning an enumerator, assume a block is always given.
* Name the method differently (that is, not inject() or subclass Array) because rspec uses inject() internally, so the tests will fail with weird messages unless your implementation of inject is perfect.
* Bonus: rewrite inject using two approaches: using iterators and using recursion.

## Task 2

Implement the following functionality for a takeaway system:
* List of dishes with prices
* Placing the order by giving the list of dishes, their quantities and a number that should be the exact total. 
* If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".

#### Tips:
* Use as many classes as necessary and follow the SOLID principles!
* The text sending functionality should be implemented using Twilio API.
* Use twilio-ruby gem to access the API.
* Use a Gemfile to manage gems.

## How to use it

To test the code, run the following command. (A text will be sent to my mobile phone everytime the test is run...please don't do it too often!)

```ruby
ruby takeaway_test.rb
```
