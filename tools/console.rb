require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

#==============Customers==========
pablo = Customer.new("pablo", "argueta")
carlos = Customer.new("carlos", "argueta")
leo = Customer.new("leo", "argueta")
rhena = Customer.new("rhena", "lopez")
alberto = Customer.new("alberto", "lopez")
dad = Customer.new("pablo", "argueta")
test = Customer.new("pablo", "lopez")

#==========Restaurants============

cicis = Restaurant.new("cicis")
burger_king = Restaurant.new("burger king")
jack = Restaurant.new("jack")
olive_garden = Restaurant.new("olive garden")
sonic = Restaurant.new("sonic")
popeyes = Restaurant.new("popeyes")

#=============reviews============

cicisreview = Review.new(cicis, pablo, 4, "It was great!")
cicisreview2= Review.new(cicis, leo, 5, "Love  it!")
popeyesreview = Review.new(popeyes, carlos, 3, "KFC is better")
jackreview = Review.new(jack, rhena, 2, "Always get rid of my favorite meals")


binding.pry

false