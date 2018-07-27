# require 'pry'
# require_relative 'customer.rb'
# require_relative 'review.rb'


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
    self.all.find do |resto|
      resto.name == name
    end
  end

  def reviews
    Review.all.select do |rev|
      rev.restaurant == self
    end
  end

  def customers
    reviews.map do |rev|
      rev.customer
    end.uniq
  end

  def average_star_rating
    my_ratings = reviews.map do |rev|
      rev.rating
    end

    ratings_sum = my_ratings.reduce(:+)

    ratings_count = reviews.count

    # The average rating is:
    ratings_sum / ratings_count

  end

  def longest_review

    my_contents = reviews.map do |rev|
      rev.content
    end

    my_contents.max_by do |content|
      content.length
    end

  end

end
