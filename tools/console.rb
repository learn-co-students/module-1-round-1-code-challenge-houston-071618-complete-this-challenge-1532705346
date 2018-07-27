require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Jane", "Doe")
customer2 = Customer.new("Mary","Poppins")
customer3 = Customer.new("Mad", "Max")

restaurant1 = Restaurant.new("Fuddruckers")
restaurant2 = Restaurant.new("Starr Pizza")
restaurant3 = Restaurant.new("Cheesecake Factory")

value = Customer.find_by_name("Jane Doe")
find_by_first_name = Customer.find_all_by_first_name("Mad")
find_all_names = Customer.all_names

find_restaurant = Restaurant.find_by_name("Starr Pizza")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
