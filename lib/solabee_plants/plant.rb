class SolabeePlants::Plant
  
    attr_accessor :name, :url, :descriptions
 
 @@all = []
 
 def initialize(name)
   @name = name 
   @url = url
   @descriptions = []
   save
 end 
 
 def self.all 
   SolabeePlants::Scraper.scrape_plants if @@all.empty?
   @@all 
 end
 
 
 def get_descriptions
   SolabeePlants::Scraper.scrape_info(self) if @descriptions.empty?
 end 
 
 
 def save 
   @@all << self 
 end
 
  
end 
  