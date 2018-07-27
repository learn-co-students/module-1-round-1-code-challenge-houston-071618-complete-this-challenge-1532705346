require 'pry'
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

  def self.find_by_name(full_name)
    
  end
    
  def self.find_all_by_first_name(name)
    list_names = Customer.all.find_all do |customer|
      customer.first_name.include?(name)
    end 
      list_names.map do |customer|
        "#{customer.first_name} #{customer.last_name}"
      end
  end

  def self.all_names
    @@all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end
    
  def add_review(restaurant, content, rating)
     Review.new(self, restaurant, content, rating)
  end
  
  def num_reviews 
    #count number of reviews for customer_name
    customer_reviews = Review.all.select do |review|
      review.customer == self 
    end 
    customer_reviews.count
  end

  def restaurants 
    #return a unique array of all restaurants a customer has reviewed. 
    restaurants_reviewed = Review.all.select do |review|
      review.customer == self
    end
    my_reviewed_restaurants = restaurants_reviewed.map do |review|
      review.restaurant.name
    end
    my_reviewed_restaurants.uniq
  end

end
