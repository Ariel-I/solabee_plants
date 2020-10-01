class SolabeePlants::PlantDescriptions
  
  attr_accessor :name, :plant, :description, :price 
  
  @@all = []
  
  def initialize(name, plant)
    @name = name
    @plant = plant 
    add_to_plant 
    save
  end 
  
  def add_to_plant
    @plant.descriptions << self unless @plant.descriptions.include?(self)
  #  @plant.price << self unless @plant.price.include?(self)
  end 
  
  def save
    @@all << self
  end 

  def self.all
    @@all
  end 
  
end 