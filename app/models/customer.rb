class Customer
  attr_accessor :first_name, :last_name, :full_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name(first_name, last_name)
    full_name = "#{first_name} #{last_name}"
    # binding.pry
  end

  def self.all
    @@all
  end

end
