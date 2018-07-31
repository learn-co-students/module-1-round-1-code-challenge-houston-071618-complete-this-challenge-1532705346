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
      list_names = Customer.all.find do |customer|
          customer.full_name == full_name
      end
  end
    
  def self.find_all_by_first_name(name)
    list_names = Customer.all.select do |customer|
        customer.first_name == name
      end 
      list_names.map do |name|
        name.full_name
      end
  end

  def self.all_names
    @@all.map do |customer|
      customer.full_name
    end
  end
    
  def add_review(restaurant, content, rating)
     Review.new(self, restaurant, content, rating)
  end
  def review 
    Review.all.select do |review|
      review.customer == self
    end 
  end
  def num_reviews 
    #count number of reviews for customer_name
    review.count
  end

  def restaurants 
    #return a unique array of all restaurants a customer has reviewed. 
    # names_only_review = review.map do |review|
      #   review.restaurant.name
      # end
      #names_only_review.uniq
    ##it did not specify if want an instance array or just the names of the restaurants in README
    ## - `Customer#restaurants`
    ## - Returns a **unique** array of all restaurants a customer has reviewed
    review.uniq
  end

end
