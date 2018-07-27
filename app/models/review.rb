class Review
  @@all = []
  attr_reader :customer, :restuarant, :rating

  def initialize(customer, restuarant, rating, review_contents)
    @customer = customer
    @restuarant = restuarant
    @rating = rating
    @review_contents = review_contents
    @@all << self
  end

  def self.all
    @@all
  end

  #   def customer
  #     all.find do |review|
  #       review.customer == self.customer
  #     end
  #   end
end
