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

  def self.find_by_name(name)
    #given a string of a **full name**, returns the **first customer** whose full name matches
    name = name.upcase
    full_name = name.split(" ")
    first_name = full_name[0]
    last_name = full_name[1]
    all.find do |customer|
      customer.first_name.upcase == first_name.upcase && customer.last_name.upcase == last_name.upcase
    end
  end

  def self.full_name(first_name, last_name)
    #given a string of a **full name**, returns the **first customer** whose full name matches
    "#{first_name} #{last_name}"
  end

  def self.find_all_by_first_name(name)
    #given a string of a first name, returns an **array** containing all customers with that first name
    name = name.upcase
    all.select do |customer|
      customer.first_name.upcase == name.upcase
    end
  end

  def self.all_names
    #should return an **array** of all of the customer full names
    all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end
end
