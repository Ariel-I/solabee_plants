class SolabeePlants::CLI

 def call 
  puts "Welcome to Solabee's! Looking to adopt a plant?!"
  puts ""
  input = "" 
  until input == "exit"
   get_plants
   list_plants 
   get_plant_info 
   next_choice
  end 
   goodbye
 end 
  
  def get_plants
    @plants = SolabeePlants::Plant.all 
  end 
  
  def list_plants 
    puts "Enter the number of the plant you would like more information about or type exit to exit"
    @plants.each.with_index(1) do |plant, i|
    puts "#{i}. #{plant.name}"
   end 
    puts"`,`,`,`,`,`,`,`,"
    puts "So many choices! But which one shall you choose?!"
  end 
  
  def get_plant_info
    chosen_plant = gets.strip.to_i
    plant = @plants[chosen_plant-1]
    show_info_for(plant) if valid_input(chosen_plant, @plants)
  end 
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0 
  end 
  
  def show_info_for(plant)
  # binding.pry
    plant.get_descriptions if !plant.bio && !plant.price
    puts "Here is more information about the #{plant.name}."
    
      puts " ~ #{plant.name}:" 
      puts "     #{plant.price}"
      puts "       #{plant.bio}"
      
      
      # need to add #{plant.price}, 
  #  binding.pry 
  end 
 # end 
  
  
  def next_choice
    puts "Type exit or type any key to return to all plants."
    @input = gets.strip 
  end 
  
  def goodbye
    puts "Thanks for visiting, come again soon :)"
  end 
  
end   