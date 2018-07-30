require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
phoenicia = Restaurant.new("Phoenicia")
zoes = Restaurant.new("Zoe's")
mcdonalds = Restaurant.new("McDonald's")
ikea = Restaurant.new("IKEA Cafe")

kevin = Customer.new("Kevin", "Peery")
nancy = Customer.new("Nancy", "Do")
greg = Customer.new("Greg", "Smith")


# def add_review(restaurant, content, rating)
greg.add_review(phoenicia, "Great food!", 5)
greg.add_review(zoes, "Mediterranean health food!", 5)
kevin.add_review(mcdonalds, "I do not eat this junk!!", 1)
kevin.add_review(ikea, "Tasty, healthy, cheap Swedish breakfast!", 5)
nancy.add_review(ikea, "I love it!", 5)
nancy.add_review(phoenicia, "Yum!!!", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
