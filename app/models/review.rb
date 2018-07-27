class Review

  attr_reader :review

@@all = []

  def initialize(review)
    @review = review
    @@all << self
  end

  def self.all
    @@all
  end


end
