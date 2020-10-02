class SolabeePlants::Plant
  
    attr_accessor :name, :url, :info
 
 @@all = []
 
 def initialize(name)
   @name = name 
   @url = url
   @info = []
   save
 end 
 
 def self.all 
   SolabeePlants::Scraper.scrape_plants if @@all.empty?
   @@all 
 end
 
 def get_descriptions
   SolabeePlants::Scraper.scrape_info(self) if @info.empty?
 end 
 
 
 def save 
   @@all << self 
 end
 
  
end 
  