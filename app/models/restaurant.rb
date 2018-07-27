class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
  	@@all
  end

  def self.find_by_name(name)
  	self.all.find do |restaurant|
  		restaurant.name == name
  	end
  end

  def reviews
  	Review.all.select do |review|
  		review.restaurant == self
  	end
  end

  def customer
  	customer_array = reviews.map do |review|
  		review.customer
  	end
  	customer_array.uniq
  end

end


# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
# - `Restaurant#longest_review`
#   - returns the longest review content for a given restaurant


