class Review

	attr_reader :customer, :restaurant
	attr_accessor :review, :content

	@@all =[]

	def initialize(customer,restaurant,review,content)
		@customer = customer
		@restaurant = restaurant
		@review = review
		@content = content
		@@all << self
	end

	def self.all
		@@all
	end
  
end


