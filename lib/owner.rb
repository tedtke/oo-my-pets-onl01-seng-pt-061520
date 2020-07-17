require 'pry'
class Owner
  # code goes here
  @@all = []
  attr_accessor
  attr_reader :name, :species
  
  def initialize(name)
    @name = name
    @species = "human"
    
    save
    # raise NoMethodError if @name != name
  end
  
  def save
    @@all << self
  end 
  
  def say_species
   return "I am a #{@species}." 
  end
  
  def self.all 
    @@all
    # binding.pry
  # Owner.each {|o| puts self}
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
  end 
    
  def cats 
    # Owner::Cats
   Cat.all.select{|cats| cats.owner == self}
  end
  
  def dogs 
    Dog.all.select{|dogs| dogs.owner == self}
  end
  
  def buy_cat(cat_name)
    cat_name = Cat.new(cat_name, self)
  end
  
  def buy_dog(dog_name)
    dog_name = Dog.new(dog_name, self)
    # binding.pry
  end
  
  def walk_dogs
    Dog.all.each do |dog|
      dog.mood == "happy"
    end
  end
end