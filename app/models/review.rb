class Review
  @@all = []
  attr_reader :customer, :restaurant

  def initialize(customer,restaurant)
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end

  # def rating(restaurant)
  #   Restaurant.all.select do |restaurant|
  #     restaurant.rating
  #   end
  # end

end
