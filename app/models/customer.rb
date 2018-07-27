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

  def self.find_by_name(full_name)
    full_name.find do |name|
      name == name
      binding.pry
    end
  end

  # def self.all_names
  #   full_name.each do |name|
  #    p name
  #   end
  # end

end
