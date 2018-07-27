class Customer

  @@all = []

  attr_accessor :first_name, :last_name

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

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, rating, content)
  end 

  def all_reviews
    Review.all.select do |review|
      review.customer == self 
    end 
  end

  def num_reviews
    ar = all_reviews.map do |review|
      review.rating 
    end
    ar.length
  end 

  def restaurants
    r = all_reviews.map do |review|
      review.restaurant
    end 
    r.uniq
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name.include?(name)
    end 
  end 

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end 
  end 

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name 
    end 
  end 

end
