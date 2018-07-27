require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
ihop = Restaurant.new("IHOP")
mcd = Restaurant.new("McDonalds")
bk = Restaurant.new("Burger King")

nancy = Customer.new("Nancy", "Do")
john = Customer.new("John", "Nguyen")
tracy = Customer.new("Tracy", "Do")
nancy2 = Customer.new("Nancy", "Drew")

rev1 = nancy.add_review(ihop, "great pancakes but not burgers", 3)
rev4 = nancy.add_review(ihop, "disgusting", 1)
rev5 = nancy.add_review(bk, "bk is from Texas", 5)
rev2 = john.add_review(mcd, "hot and spicy burger is life", 4)
rev3 = tracy.add_review(mcd, "best drunk food ever", 2)

# review = Review.new(nancy, bk, 6, "terrible")

nancy.full_name
nancy.restaurants

ihop.reviews
mcd.customers
ihop.average_star_rating

ihop.longest_review

Restaurant.all
Customer.all

Restaurant.find_by_name("IHOP")
Restaurant.find_by_name("McDonalds")

Customer.find_by_name("Nancy Do")
Customer.find_by_name("John Nguyen")

Customer.find_all_by_first_name("Nancy")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
