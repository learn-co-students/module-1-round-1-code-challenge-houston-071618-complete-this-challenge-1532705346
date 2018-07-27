require 'pry'

class Customer
  attr_accessor :first_name, :last_name
  @@all = []
  @@RATING = (1..5) #hmmmm come back to this later
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
#========== AGGREGATE METHODS ============
  def add_review(restaurant, content, rating)
    if !(rating < 1 || rating > 5)
      Review.new(self, restaurant, rating, content)
    else
      "That is not a valid Rating!"
    end
  end

  def num_reviews
    #total num of reviews written by THIS customer
    my_reviews.length
  end

  def restaurants
    #unique list of restaurants reviewed by THIS customer
    my_reviews.restaurant.uniq
  end
  #------ HELPER METHOD -------
  def my_reviews
    Review.all.select {|r| r.customer == self}
  end

#============= CLASS METHODS =============
  def self.find_by_name(name)
    #returns a customer given a FULL NAME
    self.all.find{|c| c.full_name == name}
  end

  def self.find_all_by_first_name(first_n)
    #returns an array of just FIRST NAMES and pulls their respective CUSTOMERS OUT
    self.all.select{|c| c.first_name == first_n}
  end
  def self.all_names
    self.all.map{|c| c.full_name}
  end
end
