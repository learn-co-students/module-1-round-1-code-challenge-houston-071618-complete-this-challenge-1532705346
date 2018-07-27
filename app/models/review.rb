
# - `Review#restaurant`
#   - returns the restaurant object for that given review
#   - Once a review is created, I should not be able to change the restaurant

# - `Review#content`
#   - returns the review content, as a string, for a particular review


class Review

	@@all = []
# - Once a review is created, I should not be able to change the author
	attr_reader :customer, :restaurant
	attr_accessor :rating, :content

	def initialize(customer, restaurant, content, rating)
		@customer = customer
		@restaurant = restaurant
		@content = content
		@rating = rating 
		@@all << self
	end

	# - `Review.all`
#   - returns all of the reviews
	def self.all 
		@@all 
	end

  
end

