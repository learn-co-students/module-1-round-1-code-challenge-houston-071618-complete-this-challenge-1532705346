require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


#customer 
frank = Customer.new("Frank", "Blair")
jeramy = Customer.new("Jeramy", "Govert")
caleb = Customer.new("Caleb", "Govert")
caleb_2 = Customer.new("Caleb", "Harrison")

#resturants 
applebees = Restaurant.new("Applebees")
texas_road_house = Restaurant.new("Texas Road House")


#review 
frank_applebees = Review.new(frank, applebees, 4, "good review")
jeramy_applebees = Review.new(jeramy, applebees, 2, "negative review")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line