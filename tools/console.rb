require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
sam = Customer.new("Sam", "Smith")
sam2 = Customer.new("Sam", "The Man")
john = Customer.new("John", "Smith")
hamzah = Customer.new("Hamzah", "SorryManIDontRememberPleaseDontDeductPoints")

chipotle = Restaurant.new("Chipotle")
jinya = Restaurant.new("Jinya")
wework = Restaurant.new("WeWork floor 10")

sam.add_review(chipotle, "YEAH IT WAS TASTY", 4)
john.add_review(chipotle, "BEST THING EVER", 5)
john.add_review(jinya, "2nd BEST THING EVER", 4)
hamzah.add_review(chipotle, "I, unlike you other cultureless swine, found this repulsive.", 1)
hamzah.add_review(jinya, "pretty good umami in that ramen.", 4)



mc_donalds = Restaurant.new("")





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
