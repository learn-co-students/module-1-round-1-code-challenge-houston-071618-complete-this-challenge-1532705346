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
    name = name.split(" ")
    Customer.all.find do |customer|
      if customer.first_name == name[0] && customer.last_name == name[1]
        customer
      end
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      if customer.first_name == name
        customer
      end
    end
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, rating, content)
  end

  def num_reviews
    Review.all.select do |review|
      review.customer == self
    end.length
  end

  def restaurants #returns array of restaurant objects
    cust_reviews = Review.all.select do |review|
      review.customer == self
    end
    cust_reviews.map do |review|
      review.restaurant
    end.uniq
  end



end
