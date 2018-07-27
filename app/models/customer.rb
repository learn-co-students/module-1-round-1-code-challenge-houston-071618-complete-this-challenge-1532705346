require 'pry'
class Customer

  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all 
    @@all 
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(full_name)
    
  end
    
  def self.find_all_by_first_name(name)
    list_names = Customer.all.find_all do |customer|
      customer.first_name.include?(name)
    end 
      list_names.map do |customer|
        "#{customer.first_name} #{customer.last_name}"
      end
  end

  def self.all_names
    @@all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end
    

end
