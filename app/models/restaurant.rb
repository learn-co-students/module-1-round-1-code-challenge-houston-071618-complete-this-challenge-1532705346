class Restaurant

	@@all = []	

	attr_accessor :name
	attr_reader :customer, :review

	def initialize(name)
		@name = name
		@@all << self
	end

	# - `Restaurant.all`
#   - returns an array of all restaurants
	def self.all 
		@@all 
	end

# - `Restaurant.find_by_name(name)`
#   - given a string of restaurant name, returns the first restaurant that matches
	def self.find_by_name(name)
		Restaurant.all.find do |restaurant|
			restaurant.name == name
		end
	end

# - `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
	def customers
		reviews = Review.all.select do |review|
			review.restaurant == self
		end
		reviews.map do |customer|
			customer.customer
		end.uniq
	end

# - `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant
	def reviews
		Review.all.select do |restaurant|
			restaurant.restaurant == self
		end
	end

	def star_ratings
		ratings = []
		ratings = self.reviews.map do |rating|
			rating.rating
		end
	end

	# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
	def average_star_rating
		self.star_ratings.reduce(:+).to_f / self.star_ratings.size
	end

	def content
		content = []
		content = self.reviews.map do |content|
			content.content
		end

	end

# - `Restaurant#longest_review`
#   - returns the longest review content for a given restaurant
	def longest_review
		self.content.max_by(&:length)
	end
	


end
