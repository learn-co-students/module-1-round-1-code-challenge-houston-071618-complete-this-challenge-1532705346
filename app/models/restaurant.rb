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
@@all.find{|name| name == @name}

end

end
