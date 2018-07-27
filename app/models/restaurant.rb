class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Restaurant.all
  # returns an array of all restaurants
  def self.all
    @@all
  end

  # Restaurant.find_by_name(name)
  # given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  #  Restaurant#customers
  # Returns a unique list of all customers who have reviewed a particular restaurant.
  def customers
    cust = reviews.map do |review|
      review.customer
    end
    cust.uniq
  end

  # Restaurant#reviews
  # returns an array of all reviews for that restaurant
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  # Restaurant#average_star_rating
  # returns the average star rating for a restaurant based on its reviews
  def average_star_rating
    num_reviews = reviews.length
    total_ratings = 0
    reviews.map do |review|
      total_ratings += review.rating

    end
    # binding.pry
    total_ratings/num_reviews
  end

  # Restaurant#longest_review
  # returns the longest review content for a given restaurant
  def longest_review
    long = reviews.sort_by do |review|
      review.content.length
      # binding.pry
    end
    long.reverse.first
  end
end
