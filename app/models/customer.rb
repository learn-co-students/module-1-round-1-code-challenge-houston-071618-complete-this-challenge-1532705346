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

  def self.find_by_name(name)
    all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self,rating, content)
  end

  #====helper method

  def cust_review
    reviews = Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    cust_review.count
  end

  def restaurants
    restaurants = cust_review.map do |review|
      review.restaurant
    end
    restaurants.uniq
  end




end
