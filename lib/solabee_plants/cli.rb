class SolabeePlants::CLI

 def call 
  puts "Welcome to Solabee's! Looking to adopt a plant?!"
  input = "" 
  unless input == "exit"
   get_plants
   list_plants 
   get_user_plant
   next_choice
  end 
   goodbye
 end 
  
  def get_plants
  @plants = SolabeePlants::Plant.all 
  end 
  
  def list_plants 
    puts "Enter the number of the plant you would like more information about;"
   @plants.each.with_index(1) do |plant, i|
   puts "#{i}. #{plant.name}"
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
    plant.descriptions.each.with_index(1) do |description|
      puts " ~ #{plant.name}:" 
      
      # need to add #{plant.price}, #{" 
    #binding.pry 
  end 
  get_info
  end 
  
  
  def get_info
    puts "plant price"
    puts "plant description"
  end 
  
  def next_choice
    puts "Type exit or type any key to return to all plants."
    @input = gets.strip 
  end 
  
  def goodbye
    puts "Thanks for visiting, come again soon :)"
  end 
  
end   