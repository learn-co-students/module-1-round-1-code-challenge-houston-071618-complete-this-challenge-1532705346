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

  def review_array
    Review.all.select do | review |
    review.restaurant == self
    end
  end

  def customers
    # Returns a **unique** list of all customers who have reviewed a particular restaurant.
    # .uniq
    # find all cust that had review


    # map out all of the restaurants
    review_array.map do | review |
      review.customer.first_name
    end.uniq
  end

  def reviews
  #   - returns an array of all reviews for that restaurant
  # select all reviews that belong to this restaurant
    review_array.map do | review |
      review.content
    end
  end

  def average_star_rating
    # count number of reviews
    # number of total stars
    total_stars = review_array.map do | review |
      review.rating
    end
    total_stars.inject{ |sum, el| sum + el }.to_f / review_array.size
  end

  def longest_review
  #   - returns the longest review content for a given restaurant
  # size
  # compare the size of the review
  # for each review:
  # count the elements in the string of the content
  # compare them to the original
    array_count = review_array.map do | review |
      review.content.split
    end

    if array_count.count 



  end

end
