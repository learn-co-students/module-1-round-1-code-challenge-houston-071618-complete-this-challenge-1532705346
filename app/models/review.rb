
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

# - `Review#customer`
#   - returns the customer object for that given review
	def customer
		Customer.all.select do |customer|
			customer.review == self
		end
	end

# - `Review#rating`
#   - returns the star rating for a restaurant. This should be an integer from 1-5
	def review_rating
		
	end


  
end

