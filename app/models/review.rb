class Review
  
  attr_reader :customer, :restaurant, :rating, :content
  
  @@all = []
  
  def initialize(customer_obj, restaurant_obj, rating, content)
    @customer = customer_obj
    @restaurant = restaurant_obj
    @rating = rating
    @content = content
    @@all << self
  end
  
  def self.all 
    @@all 
  end
end

