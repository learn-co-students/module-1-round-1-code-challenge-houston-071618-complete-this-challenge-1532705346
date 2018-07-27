class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find { |i| i.name == name }
  end

  def reviews
    Review.all.select { |i| i.restaurant == self }
  end

  def customers
    reviews.map(&:customer)
  end

  def average_star_rating
    reviews.map(&:rating).reduce(:+).to_f / reviews.length
  end

  def longest_review
    reviews.max_by { |i| i.content.length }.content
  end
end
