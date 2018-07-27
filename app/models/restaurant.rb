class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def find_by_name(name)
    binding.pry
  end

  def self.all
    @@all
  end

end
