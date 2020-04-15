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
    puts "COVID-19 Statistics for #{@country.capitalize}:"
    puts " "
    stats.each do |s|
      puts "Number of cases: #{s.cases}"
      puts "Number of recoveries: #{s.recovered}"
      puts "Number of deaths: #{s.deaths}"
    end
  end
end 
