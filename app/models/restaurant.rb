require 'pry'

class Restaurant
  attr_accessor :name
  #took off attr_accessor :review, :customer - not needed because review has them.

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

  def review 
    restaurant_review = Review.all.select do |review|
      review.restaurant == self
    end
  end
# *****these not done before meeting with Graham****
  def average_star_rating 
      ratings = self.review.map do |review|
        review.rating
      end
      total_ratings = ratings.inject do |sum, rating|
        sum + rating
      end
      total_ratings.to_f / ratings.size
    #returns the average star rating for a restaurant based on its reviews 
  end 

  def longest_review 
    #return the longest review content for a given restaurant
     Review.all.reduce do |longest_review, current_review|
    if current_review.content.length > longest_review.content.length
        longest_review = current_review 
     end 
     longest_review 
    end
  end

end
