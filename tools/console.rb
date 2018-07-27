require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# binding.pry
#leave this here to ensure binding.pry isn't the last line

p "----------CUSTOMERS------------"
scott = Customer.new("Scott", "Tang")
scottu = Customer.new("Scott", "U")
tiff = Customer.new("Tiff", "Nguyen")
amy = Customer.new("Amy", "Smith")
# p scott.first_name
# p scott.last_name

# p Customer.fsind_all_by_first_name("ScOtt")
# p Customer.find_by_name("Scott u")
# p Customer.all_names

p "--------------Restaurants-------------"
tan_tan = Restaurant.new("Tan Tan")
mongolian_hotpot = Restaurant.new("Mongolian Hotpot")

# p Restaurant.find_by_name("tan tan")

p
p "--------------REVIEWS-------------"
scott_review = Review.new(scott, tan_tan, 5, "awesome place")

p scott_review.customer
