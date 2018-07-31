class Review

    attr_reader :restaurant, :customer, :rating, :content
    @@all = [] 

    def initialize(customer, restaurant, content, rating=3)
        @customer = customer 
        @restaurant = restaurant 
        @content = content
        @rating = rating 
        @@all << self
    end

    def self.all 
        @@all 
    end

  
end

