class Cli 
  
  def start 
    puts "Welcome to the COVID-19 statistics CLI!"
    puts "Type the name of a country"
    @country = gets.strip.downcase
    Api.get_data(@country)
    
    print_stats(Country.all)
 
    
   
    
  end
  
  def print_stats(stats)
    puts "COVID-19 Statistics for #{@country.capitalize}:"
    puts " "
    stats.each.with_index(1) do |s, i|
      puts "#{i}. #{s.c_case}"
      puts "#{i}. #{s.recover}"
      puts "#{i}. #{s.deaths}"
    end
  end
end 
