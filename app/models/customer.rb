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
    @@all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    @@all.map(&:full_name)
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  # figure out length of reviews array
  def num_reviews
    review_arr = Review.all.select do |review|
      review.customer == self
    end
    review_arr.length
  end

  # didn't pass test
  
  # def restaurants
  #   Restaurant.all.select do |restaurant|
  #     restaurant.customer.full_name == self
  #   end.uniq
  # end

end
