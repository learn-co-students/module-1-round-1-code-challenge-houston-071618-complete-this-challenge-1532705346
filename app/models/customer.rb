class Customer
# Customer.all_names
# should return an array of all of the customer full names
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  #   Customer.all
  # should return all of the customer instances
  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  # Customer.find_by_name(name)
  # given a string of a full name, returns the first customer whose full name matches
  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
    end
  end

  # Customer.find_all_by_first_name(name)
  # given a string of a first name, returns an array containing all customers with that first name
  def self.find_all_by_first_name(first)
    self.all.select do |customer|
      customer.first_name == first
    end
  end


  # Customer#add_review(restaurant, content, rating)
  # given a restaurant object, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end
  # Customer#num_reviews
  # Returns the total number of reviews that a customer has authored
  def num_reviews
    reviews.length
  end

  # Customer#restaurants
  # Returns a unique array of all restaurants a customer has reviewed
  def restaurants
    rest = reviews.map do |review|
      review.restaurant
    end
    rest.uniq

  #   rest = Review.all.map do |review|
  #     if review.customer == self
  #       review.restaurant
  #     end
  #   end
  #   rest.compact.uniq
  end
end
