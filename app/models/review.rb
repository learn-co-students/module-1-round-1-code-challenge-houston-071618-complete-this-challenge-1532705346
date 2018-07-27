class Review

  # Review#customer
  # returns the customer object for that given review
  # Once a review is created, I should not be able to change the author
  ####attr_reader

  # Review#restaurant
  # returns the restaurant object for that given review
  # Once a review is created, I should not be able to change the restaurant
  ####attr_reader

  # Review#content
  # returns the review content, as a string, for a particular review
  #attr_reader

  attr_reader :customer, :restaurant, :rating, :content

  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  # Review.all
  # returns all of the reviews
  def self.all
    @@all
  end

  # Review#rating
  # returns the star rating for a restaurant. This should be an integer from 1-5
  ####attr_reader but add a setter and validate the 1-5 in there
  def rating=(new_rating)
    if new_rating > 0 && new_rating < 5
      @rating = new_rating
    end
  end
end
