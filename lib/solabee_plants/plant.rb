class SolabeePlants::Plant
  
  attr_accessor :name, :price, :bio, :description 
 
  @@all = []
 
  def initialize(name)
    @name = name 
    save
  end 
 
  def self.all 
    SolabeePlants::Scraper.scrape_plants if @@all.empty?
    @@all 
  end
 
  def get_descriptions
    SolabeePlants::Scraper.scrape_info(self) 
  end 
 
  def save 
     @@all << self 
  end
  
end 