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
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end
  end

  def average_star_rating
    average_rating = reviews.map do |review|
      review.rating
    end
    average_rating.reduce(:+)/(average_rating.length).to_f
  end

  def longest_review
    x = reviews.map do |review|
      review.content
    end
    x.max_by.size
  end

end

# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
# - `Restaurant#longest_review`
#   - returns the longest review content for a given restaurant
