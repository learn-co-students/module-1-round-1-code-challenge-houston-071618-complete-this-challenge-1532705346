class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    array_name = name.split()
    @@all.find do |customer|
      customer.first_name = array_name.first && customer.last_name = array_name.last
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    @@all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
      reviews.map do |review|
      review.restaurant
    end
  end

  def num_reviews
    num_reviews= reviews.map do |review|
      review.content
    end
    num_reviews.length
  end


end

# - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
# - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed
