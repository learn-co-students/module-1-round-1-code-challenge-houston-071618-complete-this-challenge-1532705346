class Customer
  @@all =[]
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant,content,rating)
    Review.new(self,restaurant,rating,content)
  end

  def num_reviews
    (Review.all.select do |review|
      review.customer == self
    end).length
  end

  def restaurants
      my_reviews=Review.all.select do |review|
        review.customer == self
      end

      (my_reviews.map do |review|
        review.restaurant
      end).uniq
  end

  def self.find_by_name(full_name)
    @@all.find do |customer|
      customer.full_name.downcase == full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    @@all.select do |customer|
      customer.first_name.downcase == first_name.downcase
    end
  end

  def self.all_names
    @@all.map do |customer|
      customer.first_name.concat(" #{customer.last_name}")
    end
  end

  def self.all
    @@all
  end
end
