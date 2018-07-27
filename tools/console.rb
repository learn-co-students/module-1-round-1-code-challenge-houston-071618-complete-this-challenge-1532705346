require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


burger_king = Restaurant.new("Burger King")
wendys = Restaurant.new("Wendys")
pho = Restaurant.new("PhoSo1")

kenny = Customer.new("Kenny", "Yang")
estelle = Customer.new("Estelle", "Ou")
Customer.all

kenny.full_name
estelle.full_name

# Customer.find_by_name("Kenny Yang")
# Customer.find_by_name("Michael Jackson")

# Customer.find_all_by_first_name("Kenny")
# Customer.find_all_by_first_name("George")

kenny.add_review(burger_king, 2, "I like burgers")

pho_review = Review.new(kenny, pho, 5, "Pho!!")
pho_review2 = Review.new(kenny, pho, 10, "Pho!!")
wendys_review = Review.new(estelle, wendys, 3, "Chickien patties are delicious")

Review.all
Restaurant.all
Customer.all
Customer.all_names
Restaurant.find_by_name("Burger King")
Restaurant.find_by_name("Taco Bell")


burger_king.reviews
wendys.reviews
burger_king.customers
wendys.customers

pho_review.rating

pho.average_star_rating
pho.longest_review

kenny.num_reviews

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
