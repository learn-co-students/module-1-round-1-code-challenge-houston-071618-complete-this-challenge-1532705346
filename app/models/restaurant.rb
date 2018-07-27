class Restaurant
  attr_accessor :name

 @@all =[]
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name
    end
  end


end
