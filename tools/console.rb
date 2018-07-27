require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


sean = Customer.new("Sean", "Huang")
puts sean.full_name

alex = Customer.new("Alex", "Hodor")


puts Customer.find_by_name("Sean Huang")

puts Customer.find_all_by_first_name("Sean")


johns = Restaurant.new("Papa Johns")
steaks = Restaurant.new("Steak House")

puts Restaurant.find_by_name("Papa Johns")

best = sean.add_review(steaks, "Best of all Time", 5)
worst = alex.add_review(johns, "Worst of all Time", 1)

puts sean.num_reviews
puts sean.restaurants

puts steaks.customers
puts johns.reviews

puts steaks.average_star_rating
puts johns.longest_review


# binding.pry
# 0 #leave this here to ensure binding.pry isn't the last line