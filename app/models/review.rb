require 'pry'
require_relative './restaurant.rb'
require_relative './customer.rb'

class Review
  attr_reader :customer, :restaurant
  attr_accessor :rating, :content # we want to be able to change these.
  @@all = []
  def initialize(customer, restaurant, rating, content)
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
