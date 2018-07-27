class Customer
  attr_accessor :first_name, :last_name, :review, :content

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def self.find_by_name(full_name)
  	self.all.find do |customer|
  		customer.full_name = full_name
  	end
  end

  def self.find_all_by_first_name(first_name)
  	self.all.select do |customer|
  		customer.first_name = first_name
  	end
  end

  def add_review(restaurant,review,content)
  	Review.new(self,restaurant,review,content)
  end

  # def self.all_names

  # end

  def self.all
  	@@all
  end

  # def restaurants
  # 	Review.all.select do |review|
  # 		review.customer == self
  # 	end
  # end

end





# - `Customer.all_names`
#   - should return an **array** of all of the customer full names
# - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
# - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed
