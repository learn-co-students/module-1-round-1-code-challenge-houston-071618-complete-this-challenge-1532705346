#### Build out the following methods on the `Restaurant` class
#
# - `Restaurant.all`
#   - returns an array of all restaurants
# - `Restaurant.find_by_name(name)`
#   - given a string of restaurant name, returns the first restaurant that matches


# - `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
# - `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant
# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
# - `Restaurant#longest_review`
#   - returns the longest review content for a given restaurant

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

  def self.find_by_name(restaurant_name)
    self.all.find do |restaurant|
      resaurant.name == restaurant_name
    end
  end

#single responsibility method
def restaurant_reviews
  Review.all.select do |review|
    review.restaurant == self
  end
end
  # - `Restaurant#customers`
  #   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
  def customers
    restaurant_customer = restaurant_reviews.map do |restaurant|
      restaurant.customer
    end
    restaurant_customer.uniq
  end

  # - `Restaurant#average_star_rating`
  #   - returns the average star rating for a restaurant based on its reviews
  def average_star_rating
    restaurant_ratings_array = restaurant_reviews.map do |restaurant|
      restaurant.rating
    end
    restaurant_ratings_array.reduce(:+) / restaurant_ratings_array.size.to_f
  end

  # - `Restaurant#longest_review`
  #   - returns the longest review content for a given restaurant
  
end
