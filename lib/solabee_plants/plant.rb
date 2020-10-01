class SolabeePlants::Plant
  
    attr_accessor :name, :descriptions
 
 @@all = []
 
 def initialize(name)
   @name = name 
   @descriptions = []
   save
 end 
 
 def self.all 
   SolabeePlants::Scraper.scrape_plants if @@all.empty?
   @@all 
 end
 
 
 def get_descriptions
   SolabeePlants::Scraper.scrape_descriptions(self) if @descriptions.empty?
 end 
 
 
 def save 
   @@all << self 
 end
 
  
end 
  