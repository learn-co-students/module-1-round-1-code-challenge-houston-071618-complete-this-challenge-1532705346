class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  #this is a class method because it's called by self and includes a (.)
  def self.find_by_name(name)
    Review.all.find do |name|
      name.customer == self
    end
  end

  def self.find_all_by_first_name(name)
    Review.all.select do |name|
      name.customer == self
    end
  end

  def self.all_names
    Review.all.select do |full_names|
      full_names.customer == self
    end
  end
end
