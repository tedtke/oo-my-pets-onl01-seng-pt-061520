require 'pry'
class Owner
  # code goes here
  attr_accessor 
  attr_reader :name, :species
  
  def initialize(name)
    @name = name
    @species = "human"
    # raise NoMethodError if @name != name
  end
  
  def say_species
   return "I am a #{@species}." 
  end
  
  def self.all 
    # binding.pry
   
  end
    
  
end