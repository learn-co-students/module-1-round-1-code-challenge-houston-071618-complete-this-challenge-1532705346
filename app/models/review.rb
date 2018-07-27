class Review
  attr_accessor :name, :resturant, :rating
@@all = []

   def initialize(name, resturant, rating, content)
@name = name
@resturant = resturant
@rating = rating
@content = content
@@all << self
end

 def self.all
   @@all
 end

def customer
  @name
end

def resturant
  @resturant
end

def rating
  @rating
end

def content
  @content.to_s 
end


end
