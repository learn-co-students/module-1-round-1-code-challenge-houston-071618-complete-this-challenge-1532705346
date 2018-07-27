# - `Customer.all`
#   - should return **all** of the customer instances
# - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
# - `Customer.find_all_by_first_name(name)`
#   - given a string of a first name, returns an **array** containing all customers with that first name
# - `Customer.all_names`
#   - should return an **array** of all of the customer full names

# - `Customer#add_review(restaurant, content, rating)`
#   - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
# - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
# - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed

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

  def self.find_by_name(name)
  #   - given a string of a **full name**, returns the **first customer** whose full name matches
  # include?

  end

  def self.all_names
  #   - should return an **array** of all of the customer full names

  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
  #   - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  Review.new(self, restaurant, content, rating)
  end

  def num_reviews
  #   - Returns the total number of reviews that a customer has authored
  # select all the reviews that belong to this customer
    Review.all.select do | review |
      review.customer == self
    end.size
  end

  def restaurants
  #   - Returns a **unique** array of all restaurants a customer has reviewed
  # select all restaurants that the customer has reviewed
    review_array = Review.all.select do | review |
      review.customer == self
    end
  # map out all of the restaurants
    review_array.map do | review |
      review.restaurant.name
    end.uniq

  end

end
