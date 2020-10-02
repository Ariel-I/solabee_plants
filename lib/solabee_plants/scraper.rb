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
 
  def self.scrape_info(price)
    url = "https://www.solabeeflowers.com/collections/plants/products/aloe-vera"
    doc = Nokogiri::HTML(open(url))
    price = doc.css("span.product__price")
 #   discription = doc.css("div.product__description").text.strip
    
  #  binding.pry 
  end 
  
  
end