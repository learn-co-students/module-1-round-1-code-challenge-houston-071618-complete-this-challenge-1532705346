class Review
  attr_reader :customer, :restaurant
  @@all = []

  def initialize(customer, restaurant, content = "", rating = [1..5])
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