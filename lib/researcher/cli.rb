class Cli 
  
  def start 
    puts "Welcome to the COVID-19 statistics CLI!"
    puts "Type the name of a country to view data."
    @country = gets.strip.downcase
    
    Country.find_by_name(@country)
    #binding.pry
    Api.get_data(@country)
    
    print_stats(Country.all)
 
    
   
    
  end
  
  def print_stats(stats)
    puts " "
    puts "COVID-19 statistics for #{@country.capitalize}:"
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
end 
