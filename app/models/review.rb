# require 'pry'
# require_relative 'restaurant.rb'
# require_relative 'customer.rb'

class Review
  attr_reader :restaurant, :customer
  attr_accessor :rating, :content

  @@all = []

  def initialize(restaurant, customer, content ="", rating = nil)
    @restaurant = restaurant
    @customer = customer
    @content = content
    @rating = rating if rating > 0 && rating < 6
    @@all << self
  end

  def self.all
    @@all
  end

end
