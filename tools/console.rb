require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customers
first_customer = Customer.new("first", "last")
second_customer = Customer.new("second", "last")
third_customer = Customer.new("third", "not last")
fourth_customer = Customer.new("fourth", "not last")
fake_first = Customer.new("first", "fake")

#restaurants
first_restaurant = Restaurant.new("The Very First Restaurant")
second_restaurant = Restaurant.new("The Very Best Restaurant")
third_restaurant = Restaurant.new("This Third Rate Restaurant")

#reviews
first_rev = Review.new(first_customer, first_restaurant, 5, "this is content")
second_rev = Review.new(second_customer, second_restaurant, 2, "this is also content")
third_rev = Review.new(third_customer, third_restaurant, 3, "yes, this is content")
fourth_rev = Review.new(fourth_customer, second_restaurant, 7, "insert content")
fifth_rev = Review.new(fourth_customer, second_restaurant, 7, "#content")
sixth_rev = Review.new(second_customer, first_restaurant, 7, "the very first")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
