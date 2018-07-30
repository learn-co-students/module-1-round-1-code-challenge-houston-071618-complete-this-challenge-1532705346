#### Build out the following methods on the `Review` class

# - `Review.all`
#   - returns all of the reviews
# - `Review#customer`
#   - returns the customer object for that given review
#   - Once a review is created, I should not be able to change the author
# - `Review#restaurant`
#   - returns the restaurant object for that given review
#   - Once a review is created, I should not be able to change the restaurant
# - `Review#rating`
#   - returns the star rating for a restaurant. This should be an integer from 1-5
# - `Review#content`
#   - returns the review content, as a string, for a particular review


class Review #I determined that Review is the joining class.
  #I am using attr_reader since the customer(who is the author of the review) and the restaurant can't be changed therefore it is read only.

  #map iterates (maps) through an array and returns the same number of elements TRANSFORMED

  #select iterates through an array and returns a reduced number of elements based upon (which matches) a limiting criteria using == (comparison)

  #find iterates through an array and returns a single element based upon (which matches) a limiting criteria using == (comparison)

  attr_reader :customer, :restaurant
  attr_accessor :rating, :content
    @@all = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

end
