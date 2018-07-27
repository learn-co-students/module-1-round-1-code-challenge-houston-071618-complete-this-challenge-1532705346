class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = self.full_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find { |customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    #given a string of a first name, returns an
    #**array** containing all customers with that
    #first name
    @@all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    #should return an **array**
    #of all of the customer full names
    @@all.map {|customer| customer.full_name}
  end

  def add_review(restaurant, content, rating)
    new_review = Review.new(self, restaurant,content,rating)
    new_review.customer = self
  end

  def num_reviews
    r_array = Review.all.select {|review| review.customer == self}
    r_array.length
  end

  def restaurants
    r_array = Review.all.select {|review| review.customer == self}
    r_array.map {|review| review.restaurant}
    r_array.uniq!
  end






end #class
