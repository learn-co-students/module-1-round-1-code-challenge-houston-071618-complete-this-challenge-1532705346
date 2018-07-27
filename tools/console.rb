require_relative '../config/environment.rb'
require_relative '../app/models/customer.rb'
require_relative '../app/models/review.rb'
require_relative '../app/models/restaurant.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

kelly = Customer.new("Kelly", "Lwakatare")
emil = Customer.new("Emil", "Mutalemwa")
suzanne = Customer.new("Suzanne", "Johnson")

berryhill = Restaurant.new("Berryhill")
chipotle = Restaurant.new("Chipotle")
guadalajara = Restaurant.new("Guadalajara")

review1 = Review.new(kelly, berryhill, 5, "awesome")
review2 = Review.new(kelly, guadalajara, 4, "decent")
review3 = Review.new(suzanne, chipotle, 3, "edible")
review4 = Review.new(emil, berryhill, 4, "great")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line