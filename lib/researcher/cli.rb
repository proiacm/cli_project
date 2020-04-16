class Cli 
  
  def start 
    puts " "
    puts "Welcome to the COVID-19 statistics CLI!"
    puts " "
    puts "Type the name of a country to view data."
    puts " "
    
    @c_name = gets.strip.downcase
    Api.get_data(@c_name)
    Country.find_by_name(@c_name.capitalize) ? print_stats(Country.find_by_name(@c_name.capitalize)) : error_message
    
    prompt
    @c_name = gets.strip.downcase
    
      while @c_name != 'exit'
        if @c_name == 'search'
          puts " "
          puts "What country do you want to see?"
          puts " "
          @c_name = gets.strip.downcase
          Api.get_data(@c_name) if !Country.find_by_name(@c_name.capitalize)
          Country.find_by_name(@c_name.capitalize) ? print_stats(Country.find_by_name(@c_name.capitalize)) : error_message
        else 
          puts " "
          puts "Please try again!"
          puts " "
        end
     prompt
     @c_name = gets.strip.downcase
   end
    puts " "
    puts "Remember to wash your hands!"
    puts " "
 end
  
  def print_stats(country)
    puts " "
    puts "COVID-19 statistics for #{country.name}:"
    puts " "
    date = Time.now.strftime("%m/%d/%Y")
    
      puts "\u2022 New cases for #{date}: #{country.today_cases}"
      puts "\u2022 Total cases: #{country.cases}"
      puts "\u2022 Cases recovered: #{country.recovered}"
      puts "\u2022 Number of deaths: #{country.deaths}"
      puts " "

  end
  
  def prompt
    puts " "
    puts "Type 'search' to search for another country's data or type 'exit' to exit."
    puts " "
  end
  
  def error_message
    puts " "
    puts "That's not a country, try again"
    puts " "
  end
end 