class Review

    attr_reader :restaurant, :customer 
    @@all = [] 

    def initialize(customer, restaurant, rating=3, review)
        @customer = customer 
        @restaurant = restaurant 
        @rating = rating 
        @review = review
        @@all << self
    end

    def self.all 
        @@all 
    end

#     def customer 
# # returns the customer object for that given review
# # Once a review is created, I should not be able to change the author
#     end

#     def restaurant 
# # returns the restaurant object for that given review
# # Once a review is created, I should not be able to change the restaurant
#     end
    def rating 
        #restaurant_rating_total = Hash.new(0)
        # self.rating.reduce(0) do |total, restaurant_rating| 
        #     total + restaurant_rating 
        # end
        #Wait. need to average the sum of ratings for a restaurant
        # returns the star rating for a restaurant. This should be an integer from 1-5 
    end

    def content 
        # returns the review content, as a string, for a particular review
    end

  
end

