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
    Customer.all.find do |customer|
      customer.full_name == name
      # binding.pry
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.map do |customer|
      if customer.first_name == name
        # binding.pry
      end
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    Review.all.map do |all_reviews|
      all_reviews.customer == self
      #array of instances
    end
  end

    def restaurants
      reviews_by = []
      Review.all.each do |reviews|
        if reviews.customer == self
          reviews_by << reviews
        end
      end
        return reviews_by
    end





end
#
# - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
# - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed
