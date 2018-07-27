require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


derek = Customer.new("Derek", "Silva")
fabian = Customer.new("Fabian", "Silva")
steph = Customer.new("Steph", "Silva")


pinks = Restaurant.new("Pink's Pizza")
uchi = Restaurant.new("Uchi")
killens = Restaurant.new("Killen's Steakhouse")

derek_pinks = Review.new(pinks, derek, 3, "It was good")
fabian_uchi = Review.new(uchi, fabian, 4, "It was great")
steph_killens = Review.new(killens, steph, 5, "It was fantastic")

derek_uchi = derek.add_review(uchi, "AMAZING", 5)
derek_uchi = derek.add_review(uchi, "Ok", 3)


Restaurant.find_by_name("Pink")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line