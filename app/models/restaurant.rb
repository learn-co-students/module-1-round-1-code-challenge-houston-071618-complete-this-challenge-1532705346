require 'pry'

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
    list_restaurants = @@all.find do |restaurant|
      restaurant.name == name
    end 
    # list_restaurants.map do |restaurant|
    #   restaurant.name
    # .map do |restaurant|
    #   "#{restaurant.name}"
    # end
  end


end
