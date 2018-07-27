class Customer
  @@all = []

  attr_accessor :name,:first_name, :last_name

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

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  def restaurants
    reviews.map do |review|
      review.restaurant
    end
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      if customer.name == name
        name.first
      end
    end
  end


end
