require 'pry'
require_relative '../config/environment.rb'
# require_relative '../customer.rb'
# require_relative '../review.rb'
# require_relative '../restaurant.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

flatiron_kitchen = Restaurant.new("Flatiron Kitchen")
iron_yard = Restaurant.new("Iron Yard")
ruby_mine = Restaurant.new("Ruby Mine")
sol_cafe = Restaurant.new("SOL Cafe - SQL Land, TX")

jeannie = Customer.new("Jeannie", "Kim")
daniel = Customer.new("Daniel", "Rodriguez")
impostor = Customer.new("Daniel", "impostor")
cindy = Customer.new("Cindy", "Vo")
ray = Customer.new("Ray", "Rodriguez")
kelly = Customer.new("Kelly", "Lkawatare")
not_one_of_us = Customer.new("Spy", "WhoDidntShagMe")

jeannie.add_review(flatiron_kitchen, jeannie, "Best chefs ever! <3", 5)
jeannie.add_review(ruby_mine, jeannie, "Seeing some light, but not the end of the tunnel.  Does it ever end?", 4)
jeannie.add_review(sol_cafe,jeannie, "A lot of tango and foxtrotting with a lot of whisky.  But set on persisting.  Haha.  I crack myself up.", 3)
ray.add_review(iron_yard,ray, "Closed.")
ray.add_review(flatiron_kitchen, ray, "Amazing.", 5)
cindy.add_review(flatiron_kitchen, cindy, "Everyone is so nice!", 5)
kelly.add_review(flatiron_kitchen, kelly, "Learning SO much. And Jessica is the drunk in our model. Tequila recipes all the way.", 5)
not_one_of_us.add_review(flatiron_kitchen, not_one_of_us, "I'm just jelly.", 0)
not_one_of_us.add_review(flatiron_kitchen, not_one_of_us,"Let me in.", 1)

p "1.Find resto."
p Restaurant.find_by_name("Flatiron Kitchen")
p "2. Return customer"
p Customer.find_by_name("Jeannie Kim")
p "3. Find all Daniels."
p Customer.find_all_by_first_name("Daniel")
p "4. Find everyone."
p Customer.all_names

p "*" * 20

p "How many reviews does Jeannie have?"
p jeannie.num_reviews
p "Which restos has Jeannie reviewed?"
p jeannie.restaurants

p "*" * 20

p "Flatiron customers: "
p flatiron_kitchen.customers
p "Its reviews: "
p flatiron_kitchen.reviews
p "Avg rating is... "
p flatiron_kitchen.average_star_rating
p "And the longest review title goes to: "
p flatiron_kitchen.longest_review

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
