class Customer
  attr_accessor :first_name, :last_name, :full_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = first_name + " " + last_name

    @@all<<self
  end

  def self.all
  	@@all
  end

  def self.find_by_name(name)
  	self.all.find do |customer|
  		customer.full_name == name
  	end

  end


  def self.find_all_by_first_name(name)
  	self.all.find_all do |customer|
  		customer.first_name == name
  	end
  end


  def self.all_names
  	self.all.map do |customer|
  		customer.full_name
  	end
  end


  def add_review(restaurant, content, rating)
  	Review.new(self, restaurant, content, rating)
  end



  def reviews
  	Review.all.select do |review|
  		review.customer == self
  	end
  end

  def num_reviews
  	reviews.length
  end

  def restaurants
  	reviews.map do |review|
  		review.restaurant
  	end.uniq
  end



  def full_name
    "#{first_name} #{last_name}"
  end
end
