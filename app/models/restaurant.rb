require 'pry'
require_relative './review.rb'
class Restaurant
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  #========== AGGREGATE METHODS ============
  def customers
    # returns a unique list of customers who have reviewed a particular restaurants
    reviews.map{|r| r.customer}.uniq
  end

  def reviews
    # returns an array of all reviews for THIS (self) restaurant
    Review.all.select{|r| r.restaurant == self}
  end

  def average_star_rating
    # returns an aerage star rating base on it's reviews
    # average = sum / # entries = sum / length
    counter = 0
    Review.all.map{|r| r.rating} ## DIDNT FINISH NOOO!!!!
  end
  #=========== CLASS METHODS ===============
  def self.all
    @@all
  end
  def self.find_by_name(name)
    self.all.find{|r| r.full_name == name}
  end
end
