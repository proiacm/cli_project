class Cli 
  
  def start 
    puts " "
    puts "Welcome to the COVID-19 statistics CLI."
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
          puts "What country do you want to research?"
          puts " "
          @c_name = gets.strip.downcase
          Api.get_data(@c_name) if !Country.find_by_name(@c_name.capitalize)
          Country.find_by_name(@c_name.capitalize) ? print_stats(Country.find_by_name(@c_name.capitalize)) : error_message
        else 
          puts " "
          puts "That was not a valid response. Please try again!"
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
      puts "\u2022 New cases for #{date.colorize(:yellow)}: #{country.today_cases.to_s.colorize(:yellow)}"
      puts "\u2022 Total cases: #{country.cases.to_s.colorize(:light_blue)}"
      puts "\u2022 Cases recovered: #{country.recovered.to_s.colorize(:green)}"
      puts "\u2022 Number of deaths: #{country.deaths.to_s.colorize(:red)}"
      puts " "
  end
  
  def prompt
    puts " "
    puts "Type 'search' to search for country data again or type 'exit' to exit."
    puts " "
  end
  
  def error_message
    puts " "
    puts "I couldn't find that country."
  end
end 