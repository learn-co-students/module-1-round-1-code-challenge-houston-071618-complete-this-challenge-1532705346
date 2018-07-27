class Customer
  attr_accessor :first_name, :last_name
@@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def find_by_name(name)
full_name.find{|name| name == self  }
  end

def find_all_by_first_name(name)
  @@all.collect{|name| name == @first_name}

end

end
