class SolabeePlants::Scraper
  
  def self.scrape_plants
    url = "https://www.solabeeflowers.com/collections/plants"
    doc = Nokogiri::HTML(open(url))
    plants = doc.css("h3.card__name")
    plants.each do |p|
    name = p.text
      SolabeePlants::Plant.new(name)
    end 
  end 
 
  def self.scrape_info(plant)
  #  binding.pry
    doc = Nokogiri::HTML(open("https://www.solabeeflowers.com/collections/plants/products/#{plant.name.gsub(" ","-").gsub("'","")}"))
    #plant.description =
   # descriptions = {}
    plant.price = doc.css("span.product__current-price").text 
    plant.bio = doc.css("div.product__description").text.strip
    
#   binding.pry 
  end 
  
  
end