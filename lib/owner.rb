class Owner
  # code goes here
  
  pets = {fishes: [], cats: [], dogs: []}
  
  @@all = []
  attr_accessor :pets
  attr_reader :name
  def initialize(pets)
    @pets = pets
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
  
  def pets
    @pets
  end
  
end