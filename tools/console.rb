require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
michael = Customer.new("Michael","Shalmi")
olivia = Customer.new("Olivia","Bent")
amanda = Customer.new("Amanda","Atzil")

fadis = Restaurant.new("Fadi's",4)
fufu = Restaurant.new("Fufu Cafe",5)

m_fadis = Review.new(michael,fadis)
a_fadis = Review.new(amanda,fadis)
o_fadis = Review.new(olivia,fadis)
m_fufu = Review.new(michael,fufu)

fadis.reviews
fufu.reviews

Restaurant.find_by_name("Fufu")
Customer.find_all_by_first_name("Olivia")
Customer.all_names

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
