# require 'pry'
# require_relative 'restaurant.rb'
# require_relative 'review.rb'

class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, content, rating)
  end

  def num_reviews
    Review.all.select do |rev|
      rev.customer == self
    end
  end

  def restaurants
    num_reviews.map do |review|
      review.restaurant
    end.uniq
  end

  def self.find_by_name(full_name)
    self.all.find do |customer|
      customer.first_name + " " + customer.last_name == full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    self.all.select do |customer|
      customer.first_name == first_name
    end
  end

  def self.all_names
    self.all.map do |customer|
      (customer.first_name + " " + customer.last_name)
    end
  end

end
