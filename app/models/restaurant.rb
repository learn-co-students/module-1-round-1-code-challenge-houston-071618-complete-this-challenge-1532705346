class Restaurant
  @@all = []
  attr_accessor :name, :rating

  def initialize(name,rating)
    @name = name
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    reviews.map do |review|
      review.customer
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
    name
  end

end
