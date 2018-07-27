require_relative '../config/environment.rb'
require_relative '../app/models/customer.rb'
require_relative '../app/models/restaurant.rb'
require_relative '../app/models/review.rb'


def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

alex = Customer.new("alex","aguilar")
belle = Customer.new("belle","carrillo")
karen = Customer.new("karen","soriano")

dominos = Restaurant.new("Dominos")
thai = Restaurant.new("thai kitchen")

alex_rates_domino = Review.new(alex, dominos, 2, "This place was just ok." )
alex_rates_domino2 = Review.new(alex, dominos, 5, "This place was just ok." )
karen_rates_thai = Review.new(karen, thai, 5, "This place was great." )
karen_rates_domino3 = Review.new(karen, dominos, 1, "This place was the worst. I could go on but this is good enough for testing" )

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
