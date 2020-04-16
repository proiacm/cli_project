class Cli 
  
  def start 
    puts " "
    puts "Welcome to the COVID-19 statistics CLI!"
    puts " "
    puts "Type the name of a country to view data."
    puts " "
    
    @c_name = gets.strip.downcase
    Api.get_data(@c_name)
    print_stats(Country.all)
    
    prompt
    @c_name = gets.strip.downcase
    
      while @c_name != 'exit'
        if @c_name == 'search'
          puts " "
          puts "What country do you want to see?"
          puts " "
          @c_name = gets.strip.downcase
          Api.get_data(@c_name) if !Country.find_by_name(@c_name.capitalize)
          binding.pry
          print_stats(Country.find_by_name(@c_name.capitalize))
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
  
  def print_stats(stats)
    puts " "
    puts "COVID-19 statistics for #{@c_name.capitalize}:"
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