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
 
  
#  def self.all
    #scrape data from solabee flowers website and return plants from that data 
  #  self.scrape_plants
 # end 
    
#  def self.scrape_plants
  #  plants = []
 #   plants << self.scrape_plants1
  #  plants << self.scrape_plants_aloevera
   
  #objects: 
  #Go to Solabee site 
  #Extract the plant properties
  #Instanstiate the plant 
  
  
#   plant_1 = self.new 
#   plant_1.name = "Aloe Vera"
#   plant_1.price = "$9"
#   plant_1.description = "string"
#   plant_1.url = "https://www.solabeeflowers.com/collections/plants/products/aloe-vera"
   
#   plant_2 = self.new 
#   plant_2.name = "Anthurium Superbum"
#   plant_2.price = "$15"
#   plant_2.description = "string"
#   plant_2.url = "https://www.solabeeflowers.com/collections/plants/products/anthurium-superbum"
    
 #   plants
      
#  end 
  
#  def self.scrape_plants1
#  doc = Nokogiri::HTML(open("https://www.solabeeflowers.com/collections/plants"))
#    plant = self.new
#    plant.name = doc.search("h3.card__name").first.text.strip
#    plant.price = doc.search("div.card__price").first.text.strip
#    plant.url = "https://www.solabeeflowers.com/collections/plants/products/aloe-vera"
#    plant
#    binding.pry 
#  end 
  
  
#  def self.scrape_plants_aloevera
#  doc = Nokogiri::HTML(open("https://www.solabeeflowers.com/collections/plants/products/aloe-vera"))
#    plant = self.new 
#    plant.name = doc.search("h1.product__title").text
#    plant.price = doc.search("span.product__current-price").text.strip
#    plant.description = doc.search("div.product__description").text
#    plant.url = "https://www.solabeeflowers.com/collections/plants/products/aloe-vera" 
    # || doc.search("a.in-page-link").attr("href")
 
 # binding.pry
#  end 
  
end 
  