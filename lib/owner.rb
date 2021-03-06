require 'pry'
class Owner
  # code goes here
  
  #pets = {fishes: [], cats: [], dogs: []}

  @@all = []
  attr_accessor :pets
  attr_reader :name
  def initialize(pets)
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all = []
  end
  
  def species
    "human"
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def name=(name)
    @name = name
  end
  
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  
  
  def sell_pets
  
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    
    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    
    @pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    
    @pets.each do |type, pets|
      @pets[type] = []
    end
  end
  
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
  
end