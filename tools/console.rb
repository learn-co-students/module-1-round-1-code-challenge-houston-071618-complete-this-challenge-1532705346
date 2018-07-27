require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

guy_fiero = Customer.new("gordon", "fiero")
gordon_ramsey = Customer.new("gordon", "ramsey")
bobby_flay = Customer.new("bobby", "flay")

chipotle = Restaurant.new("chipotle")
dominos = Restaurant.new("dominos")
ramen_house = Restaurant.new("ramen_house")

happy = Review.new(gordon_ramsey, ramen_house, 5, "This is a review")
sad = Review.new(guy_fiero, chipotle, 3, "a")
excited = Review.new(bobby_flay, chipotle, 4, "This is a review")
angry = Review.new(guy_fiero, chipotle, 1, "This is short")
somber = Review.new(bobby_flay, dominos, 2, "This is a review")
estatic = Review.new(bobby_flay, ramen_house, 5, "This is a long review. This is a long review This is a long review This is a long review This is a long review This is a long review This is a long review")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line