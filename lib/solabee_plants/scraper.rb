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
 
  def self.scrape_info(profile_url)
    doc = Nokogiri::HTML(open(profile_url))
    descriptions = {}
    descriptions[:price] = doc.css("span.product__price").text 
    descriptions[:bio] = doc.css("div.product__description").text.strip
    
  #  binding.pry 
  end 
  
  
end