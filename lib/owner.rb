require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  ####
  def say_species(x)
    
  end
  ####
  
  def buy_fish(name)
    name = Fish.new(name)
    pets[:fishes] << name
  end
  
  def buy_cat(name)
    name = Cat.new(name)
    pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    pets[:dogs] << name
  end
  
 ######3 def walk_dogs(dog)
    pets[:dogs][dog][mood] = "happy"  
  end
  
end