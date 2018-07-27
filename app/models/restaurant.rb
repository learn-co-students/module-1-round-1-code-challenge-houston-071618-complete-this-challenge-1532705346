class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find do |restaurant_name|
      restaurant_name == name
    end
  end

  def customers
    restaurant_reviews = Review.all.select do |review|
      review.restaurant == self
    end
  #   restaurant_reviews.each do |customer|
  #     puts customer
  #     binding.pry

  #   end
  end

end
