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
    self.all.find do |restaurant|
      if restaurant.name == name
        restaurant
      end
    end
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating #array of ratings, then average
    self.reviews.map do |review|
      review.rating
    end
    #still need to average...
  end

end
