class Cli 
  
  def start 
    puts "Welcome to the COVID-19 statistics CLI!"
    menu
    input = gets.strip.downcase
    Api.get_data(input)
      while input != "exit"
        if 
    end
  end
  
  def menu
    puts "Type the name of a country to retrieve data or 'exit' to exit the program"
  end
end 
