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
    self.all.find { |restaurant| restaurant.name == name }
  end

  def customers
    reviews.map { |review| review.customer }.uniq
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def average_star_rating
    reviews.map { |review| review.rating }.reduce(:+) / (reviews.length * 1.0)
  end

  def longest_review
    reviews.sort_by { |review| review.content.length }.last
  end

end
