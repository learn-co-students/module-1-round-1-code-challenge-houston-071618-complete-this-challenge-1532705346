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
    all.find do |restaurant|
      restaurant.name == name
    end
  end

  #=====helper method

  def restaurant_reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    restaurant_reviews.map do |review|
      review.customer
    end
  end

  def reviews
    restaurant_reviews.map do |review|
      review.content
    end
  end

  #===========helper method

  def all_ratings
    restaurant_reviews.map do |review|
      review.rating
    end
  end

  #=====Helper method

  # def rating_count
  #   restaurant_reviews.count
  # end

  def average_star_rating
    rating_count = 1

    total_star_rating = all_ratings.reduce(0) do |total, rating|
      total+= rating
      rating_count +=1
    end

    average_star_rating = total_star_rating / rating_count
  end

  def longest_review
    reviews.reduce do |longest_content, current|
      if longest_content.length < current.length
        longest_content == current
      end

      longest_content
    end
  end



end
