class Cli 
  
  def start 
    puts " "
    puts "Welcome to the COVID-19 statistics CLI!"
    puts " "
    puts "Type the name of a country to view data."
    puts " "
    
    
    @input = gets.strip.downcase
    Api.get_data(@input)
    print_stats(Country.all)
    
    prompt
    @input = gets.strip.downcase
    
      while @input != 'exit'
        if @input == 'search'
          puts " "
          puts "Type the name of a country to view data."
          puts " "
          @input = gets.strip.downcase
          Api.get_data(@input) if !Country.find_by_name(@input.capitalize)
          print_stats(Country.all)
        else 
          puts " "
          puts "Oops! That is not a valid country. "
          puts " "
        end
    prompt
    @input = gets.strip.downcase
    puts " "
    puts "Remember to wash your hands!"
    puts " "
  end 
 end
  
  def print_stats(stats)
    puts " "
    puts "COVID-19 statistics for #{@input.capitalize}:"
    puts " "
    date = Time.now.strftime("%m/%d/%Y")
    stats.each do |s|
      puts "\u2022 New cases for #{date}: #{s.today_cases}"
      puts "\u2022 Total cases: #{s.cases}"
      puts "\u2022 Cases recovered: #{s.recovered}"
      puts "\u2022 Number of deaths: #{s.deaths}"
      puts " "
    end
  end
  
  def prompt
    puts " "
    puts "Type 'search' to search for another country's data or type 'exit' to exit."
    puts " "
  end
end 