require 'pry'

class Restaurant
  attr_accessor :name, :review, :customer

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all 
  end
  
  def self.find_by_name(name)
    list_restaurants = @@all.find do |restaurant|
      restaurant.name == name
    end 
    #returns instance of first - but wasn't sure if needed to return in string format
    # list_restaurants.map do |restaurant|
    #   restaurant.name
    # .map do |restaurant|
    #   "#{restaurant.name}"
    # end - this was not working so took it out
  end
  def customers 
    #returns a unique list of all customers who have reivewed a particular restaurant 
    restaurant_customers = Review.all.select do |review|
      review.restaurant == self 
    end 
    restaurant_customer_uniq = restaurant_customers.map do |review|
      "#{review.customer.full_name}"
    end
    restaurant_customer_uniq.uniq
  end

# *****these not done before meeting with Graham****
  def average_star_rating 
    #returns the average star rating for a restaurant based on its reviews 
  end 

  def longest_review 
    #return the longest review content for a given restaurant
    #build helper reviews 
    #
    # content_count = 0 

    # Review.all.find do |review|

    #   if review.content.length > content_count 

  
  end

end
