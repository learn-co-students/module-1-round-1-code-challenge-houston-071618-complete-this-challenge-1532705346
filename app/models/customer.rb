class Customer
  attr_reader :name, :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @name = "#{first_name} #{last_name}"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find { |i| i.name == name }
  end

  def self.find_all_by_first_name(name)
    all.select { |i| i.first_name == name }
  end

  def self.all_names
    all.map(&:name)
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    Review.all.select { |i| i.customer.name == name }.length
  end

  def restaurants
    Review.all.map { |i| i.restaurant if i.customer.name == name }.compact!.uniq!
  end
end
