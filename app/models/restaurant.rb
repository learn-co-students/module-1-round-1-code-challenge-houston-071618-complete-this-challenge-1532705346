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
    @@all.find do |r|
      r.name == name
    end
  end

  #didn't finish!
  
  # def customers
  #   Customer.all.select do |customer|
  #     customer.
 
  # all reviews that belong to a restaurant
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    count = reviews.length
    sum = reviews.map(&:rating).reduce(:+)
    sum / count
  end
  
  # use the inst. method reviews
  # return array of contents
  # pick out the longest review
  def longest_review
    reviews.map(&:content).max_by(&:length)
  end
end
