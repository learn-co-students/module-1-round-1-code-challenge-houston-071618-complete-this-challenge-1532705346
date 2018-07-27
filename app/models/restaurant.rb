class Restaurant
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def customers
    (reviews.map do |review|
      review.customer
    end).uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def longest_review
    reviews.max_by {|review| review.content.length}
  end

  def average_star_rating
    arr=reviews.map do |review|
      review.rating
    end
    arr.inject{ |sum, el| sum + el }.to_f / arr.size
  end

  def self.find_by_name(name)
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

  def self.all
    @@all
  end

end
