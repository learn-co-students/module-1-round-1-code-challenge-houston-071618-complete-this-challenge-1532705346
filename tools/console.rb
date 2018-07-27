require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Customer
marylene = Customer.new("marylene", "chan")
tony = Customer.new("tony","dang")
mom = Customer.new("mom", "chan")


# Restaurant

dennys = Restaurant.new("dennys")
star_pizza = Restaurant.new("star_pizza")
steak_house = Restaurant.new( "steak_house")


# Review
mar_verybad_review = Review.new(marylene,dennys, "Soooo bad", 1)
mar_bad_review = Review.new(marylene,dennys, "Not good", 2)
mom_good_review = Review.new(mom,dennys, "Good eggs", 3)
tony_best_review = Review.new(tony,star_pizza, "Best pizza in town. Love it. Would eat it everyday.", 5)
mar_best_review = Review.new(marylene,star_pizza, "Love.", 4)


puts "connected"
pry.start
# binding.pry
0 #leave this here to ensure binding.pry isn't the last line
