###Refactoring

sms.rb, Line 13
  :body could be composed outside of the send_confirmatin method
  :to phone number is currently hard coded into the method, should be extracted so that can accept any customer number 
  
Message could be extended to report the time the order will be delivered  (think this was in the original spec?)

... but really, really nice code - aside from the sms methods, everything was less than 3 lines :)
  
