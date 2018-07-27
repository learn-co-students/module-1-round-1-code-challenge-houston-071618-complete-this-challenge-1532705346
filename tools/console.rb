require_relative '../config/environment.rb'
require_relative '../app/models/restaurant.rb'
require_relative '../app/models/review.rb'
require_relative '../app/models/customer.rb'

require 'pry'

def reload
  load 'config/environment.rb'
end

cassandra = Customer.new("cassandra", "montoya")
shamss = Customer.new("shamss", "hammami")
maria = Customer.new("maria", "morales")
shamss = Customer.new("shamss", "montoya")

taqueria_laredo = Restaurant.new("taqueria_laredo")
taqueria = Restaurant.new("taqueria")
taqueria_Jalisco = Restaurant.new ("taqueria_Jalisco")

review1= Review.new(cassandra, taqueria, "excelente!", 4)
review2= Review.new(shamss, taqueria_laredo, "mejor los de mi abuela", 1)
review3= Review.new(maria, taqueria, "muy rico", 3)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
