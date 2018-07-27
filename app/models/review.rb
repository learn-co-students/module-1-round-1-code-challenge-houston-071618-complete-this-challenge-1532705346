class Review #I determined that Review is the joining class.
  #I am using attr_reader since the customer(who is the author of the review) and the restaurant can't be changed therefore it is read only.

  #map iterates (maps) through an array and returns the same number of elements TRANSFORMED

  #select iterates through an array and returns a reduced number of elements based upon (which matches) a limiting criteria using == (comparison)

  #find iterates through an array and returns a single element based upon (which matches) a limiting criteria using == (comparison)

  attr_reader :customer, :restaurant
  attr_accessor :review :content
  @@all = []

  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant
    @review = review
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end
end
