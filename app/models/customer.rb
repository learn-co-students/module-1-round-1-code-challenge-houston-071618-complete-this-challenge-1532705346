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
  
  def self.find_by_name(full_name_str)
    self.all.find do |customer_obj|
     customer_obj.full_name == full_name_str
    end
  end
  
  def self.find_all_by_first_name(first_name_str)
    self.all.select do |customer_obj|
      customer_obj.first_name == first_name_str
    end
  end
  
  def add_review(restaurant_obj, review_content, review_rating)
    Review.new(self, restaurant_obj, review_rating, review_content)
  end
  
  def all_reviews
    Review.all.select {|review_obj| review_obj.customer == self}
  end
  
  def num_reviews
    self.all_reviews.count
  end
  
  def restaurants
    all_restaurants = self.all_reviews.map do |review_obj|
      review_obj.restaurant
    end
    
    all_restaurants.uniq
  end
end
