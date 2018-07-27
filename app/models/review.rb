class Review
  attr_accessor :customer, :restaurant
  attr_reader :content, :rating
  @@all = []

  def initialize (customer, restaurant, rating, content)
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
