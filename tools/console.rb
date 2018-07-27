require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



#Customers
erica = Customer.new("Erica", "Lehotzky")
tom = Customer.new("Tom", "Smith")
jane = Customer.new("Jane", "Doe")
john = Customer.new("John", "Doe")

#Restaurants
mcd = Restaurant.new("McDonalds")
pizza_hut = Restaurant.new("Pizza Hut")
chilis = Restaurant.new("Chilis")
torchys = Restaurant.new("Torchy's")

#Reviews
erica.add_review(mcd, "okay", 2)
tom.add_review(pizza_hut, "meh", 3)
jane.add_review(mcd, "ehh", 1)
erica.add_review(pizza_hut, "good", 4)








binding.pry


"Hello, Instructors!"


 #leave this here to ensure binding.pry isn't the last line