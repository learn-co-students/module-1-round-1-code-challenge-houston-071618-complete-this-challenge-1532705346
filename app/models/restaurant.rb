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
  	self.all.find do |restaurant|
  		restaurant.name == name
  	end
  end

  def reviews
  	Review.all.select do |review|
  		review.restaurant == self
  	end
  end


  def customers
  	reviews.map do |review|
  		review.customer
  	end.uniq
  end

  def average_star_rating
  	tot = 0 
  	reviews.each do |review|
  		tot += review.rating
  	end

  	tot/reviews.length
  end

  def longest_review
  	longg = reviews.reduce do |longest, current|
  		if longest.content.length < current.content.length
  			longest = current
  		end
  		longest
  	end

  	longg.content
  end


end
