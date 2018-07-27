class Review

  attr_reader :customer

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

  ## Can just use attr_accessor for ALL below
  def customer
    self.customer
  end

  def restaurant
    self.restaurant
  end

  def rating
    self.rating
  end

  def content
    self.content
  end



end
