class Review
    @@all = []

    attr_reader :restaurant, :customer
    attr_accessor :rating

    def initialize(restaurant, customer, rating, review)
        @restaurant = restaurant
        @customer = customer
        @rating = rating
        @review = review


        @@all << self

    end



    def self.all
        @@all
    end

    def content
        @review
    end
  
end

