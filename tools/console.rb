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

frank.add_review(applebees, "good review", 4)
jeramy.add_review(applebees, "negative review", 2)
frank.add_review(texas_road_house, "good reveiw", 5)
jeramy.add_review(applebees, "This is a long good review", 4)
frank_applebees = Review.new(frank, applebees, "really really bad review", 1)
jeramy_applebees = Review.new(jeramy, applebees, "ok review", 3)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line