require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

sue = Customer.new("Sue","Cue")
jim = Customer.new("Slim", "Jim")
sue2 = Customer.new("Sue","Cue2")
Customer.find_by_name("Sue Cue")
Customer.find_all_by_first_name("Sue")
Customer.all_names

in_n_out = Restaurant.new("In-N-Out")
subway = Restaurant.new("Subway")
mf = Restaurant.new("MF Sushi")

Restaurant.find_by_name("MF Sushi")

rev1 = Review.new(subway, sue, 5, "eat fresh")
revb = Review.new(mf, sue, 6, "the best")
revd = Review.new(mf, jim, 5, "so good")
revz = Review.new(mf, sue, 6, "the best again")

sue.add_review(in_n_out, "West Coast treat", 4)
sue.num_reviews

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
