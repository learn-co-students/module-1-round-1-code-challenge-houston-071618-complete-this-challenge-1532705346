class Restaurant

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all 
    @@all 
  end 

  def reviews
    Review.all.select do |review|
      review.restaurant == self 
    end 
  end

  def customers
    c = reviews.map do |review|
      review.customer
    end 
    c.uniq
  end 

  def average_star_rating
    avg = reviews.map do |review|
      review.rating 
    end 
    binding.pry 
    avg.inject{ |sum, el| sum + el }.to_f / avg.size
  end 

  def longest_review
    content_array = reviews.map do |review|
      review.content
    end 
    content_array.max_by(&:length)
  end 

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name.include?(name)
    end  
  end 

end
