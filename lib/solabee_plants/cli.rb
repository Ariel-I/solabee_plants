class SolabeePlants::CLI

 def call 
  get_plants
  list_plants 
  get_user_plant
#  menu
# goodbye
end 
  
  def get_plants
 # SolabeePlants::Plant.new("plant")
  @plants = SolabeePlants::Plant.all 
  end 
  
  def list_plants 
    puts "Welcome to Solabee's! Looking to adopt a plant?!"
    puts "Enter the number of the plant you would like more information about; type list to see all plants or type exit to close."
   @plants.each.with_index(1) do |plant, i|
   puts "#{i}. #{plant.name}"
  
#    puts "Welcome to Solabee's! Looking to adopt a plant?!"
#    @plants = SolabeePlants::Plant.all 
#    @plants.each.with_index(1) do |plant, i|
#      puts "#{i}. #{plant.name} - #{plant.price}"
   end 
  
  end 
  
  def get_user_plant
   chosen_plant = gets.strip.to_i
    show_description_for(chosen_plant) if valid_input(chosen_plant, @plants)
  end 
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0 
  end 
  
  def show_description_for(chosen_plant)
    plant = @plants[chosen_plant-1]
    plant.get_descriptions 
    puts "Here is more information about the #{plant.name}."
    plant.descriptions.each.with_index(1) do |description,i|
      puts "#{i}. #{plant.name}" 
      
      # need to add #{plant.price}, #{" 
    #binding.pry 
  end 
    
  #  SolabeePlants::Plants.all.each.do |describe|
  #    puts "plant.name, plant.price, plant.description"
  #  end 
    #get_plant 
  end 
  
#  def menu
#    input = nil 
#    while input != "exit"
#    puts "Enter the number of the plant you would like more information about; type list to see all plants or type exit to close."
#    input = gets.strip
    
#    if input.to_i > 0 
#      the_plant = @plants[input.to_i-1]
#      puts  "#{the_plant.name} - #{the_plant.price}"
#      elsif input == "list"
#      list_plants
#    else
#      puts "input unclear. type list or exit"
#    end
#   end
#   end
  
#  def goodbye
#    puts "Thank you for visiting, goodbye."
#  end 
  
end   