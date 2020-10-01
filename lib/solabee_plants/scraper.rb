class SolabeePlants::Scraper
  
  def self.scrape_plants
    doc = Nokogiri::HTML(open("https://www.solabeeflowers.com/collections/plants"))
    
    plants = doc.css("h3.card__name")
    plants.each do |p|
      name = p.text
      SolabeePlants::Plant.new(name)
    end 
  end 
 
  def self.scrape_descriptions(plant)
     doc = Nokogiri::HTML(open("https://www.solabeeflowers.com/collections/plants/products/aloe-vera"))
#    plant.price = doc.css("p.product__price")
 #    plant.descriptions
  
  end 
  
  
end