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
  
  def self.find_by_name(restuarant_name)
    self.all.find {|restaurant_obj| restaurant_obj.name == restuarant_name}
  end
  
  def reviews
    Review.all.select {|review_obj| review_obj.restaurant == self}
  end
  
  def customers
    all_customers = self.reviews.map do |review_obj|
      review_obj.customer
    end
    
    all_customers.uniq
  end
  
  def average_star_rating
    review_sum = self.reviews.reduce(0) do |review_sum, current_review_obj|
      review_sum += current_review_obj.rating
    end
        
    review_sum / self.reviews.count.to_f
  end
  
  def longest_review
    all_content = self.reviews.map do |review_obj|
      review_obj.content
    end
    
    sorted_reviews = all_content.max_by do |review_content| 
      review_content.length
    end
  end
end
