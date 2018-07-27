require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

ray = Customer.new("ray", "rodriguez")
bri = Customer.new("bri", "rodriguez")
rex = Customer.new("rex", "hudson")
derek = Customer.new("derek", "silva")

# search_ray = Customer.find_by_name("ray rodriguez")
search = Customer.find_all_by_first_name("derek")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
