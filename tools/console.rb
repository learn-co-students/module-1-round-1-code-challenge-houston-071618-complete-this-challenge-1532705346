require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cindy = Customer.new("Cindy", "Vo")
daniel = Customer.new("Daniel", "Soetanto")
carlos = Customer.new("Carlos", "Salazar")
daniel2 = Customer.new("Daniel", "Rodriguez")

izakaya = Restaurant.new("Izakaya")
b_and_b = Restaurant.new("B & B")
mf_sushi = Restaurant.new("MF Sushi")



binding.pry

puts "Hello Humzah!"
 #leave this here to ensure binding.pry isn't the last line