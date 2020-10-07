class SolabeePlants::CLI

  def call 
    input = nil  
  until input == "exit"
    puts "Welcome to Solabee's! Looking to adopt a plant?!"
    puts ""
    get_plants
    list_plants
    get_plant_info
    next_choice
    input = gets.strip
  end
    goodbye
  end
  
  def get_plants
    plants = SolabeePlants::Plant.all 
  end 
  
  def list_plants 
    puts "Enter the number of the plant you would like more information about or type exit to exit."
    puts ""
    puts "Current plants:"
    puts ""
    get_plants.each.with_index(1) do |plant, i|
    puts "#{i}. #{plant.name}"
   end 
    puts ""
    puts "So many choices! But which one shall you choose?!"
  end 
  
  def get_plant_info
    chosen_plant = gets.strip.to_i
    plant = get_plants[chosen_plant-1]
    show_info_for(plant) if valid_input(chosen_plant, get_plants)
  end 
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0 
  end 
  
  def show_info_for(plant)
    plant.get_descriptions if !plant.bio && !plant.price
    puts "Here is more information about the #{plant.name}."
    puts ""
    puts " ~ #{plant.name}:" 
    puts "    #{plant.price}"
    puts ""
    puts "      #{plant.bio}"
  end 
 
  def next_choice
    puts "********************************************************************************"
    puts "Type exit or type any key to return to all plants."
  end 
  
  def goodbye
    puts "Thanks for visiting, come again soon :)"
  end 
  
end   