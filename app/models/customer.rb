class Customer
  attr_accessor :first_name, :last_name
  @@all =[]

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
    self.all.find do |customer|
      customer.full_name
    end
end

def self.find_all_by_first_name(name)
  self.all.select do |customer|
    customer.first_name.include?(name)
  end
end

def self.all_names
  self.all.select do |customer|
    customer.full_name
  end
end

# def add_review(restaurant, content, rating)
#   customer_reviewer = Review.all.select do |review|
#     review.customer == self
#     binding.pry
#   end
#   restaurant_reviews =customer_reviewer.all.select do |customer_review|
#     customer_review.restaurant
#   end
#   restaurant_reviews << Review.new(restaurant, content, rating)
# end


end
