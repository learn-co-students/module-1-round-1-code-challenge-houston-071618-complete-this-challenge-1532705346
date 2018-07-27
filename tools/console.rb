require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

chris = Customer.new("Chris","Arnold")
ryan = Customer.new("Ryan","Iglesia")
dorothy = Customer.new("Dorothy","Ma")

chilis = Restaurant.new("Chili's")
applebees = Restaurant.new("Applebee's")
popeyes = Restaurant.new("Popeye's")

review1 = Review.new(chris,chilis,4,"gross")
review2 = Review.new(dorothy,popeyes,5,"yaaaaaass, queen")
review3 = Review.new(chris,applebees,2,"meh")

chris.full_name
ryan.full_name

Restaurant.find_by_name(applebees)
Restaurant.find_by_name(chilis)

applebees.customer
chilis.customer

popeyes.reviews

chris.add_review("Bougie Place", 4, "wooorst")
ryan.add_review("Chili's", 2, "fried yuck")

# Customer.find_by_name(chris)
# Customer.find_by_name(dorothy)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line