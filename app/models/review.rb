class Review	
	attr_accessor :rating, :content
	attr_reader :customer, :restaurant

	@@all = []


	def initialize(customer, restaurant, content, rating)
		@customer = customer
		@restaurant = restaurant
		@content = content
		@rating = rating
		@@all << self
	end

	def self.all 
		@@all 
	end

  	# def customer 
  	# end

  	# def restaurant
  	# end

end

