class Cli 
  
  def start 
    puts "Welcome to the COVID-19 statistics CLI!"
    menu
    @country = gets.strip.downcase
    Api.get_data(@country)
    print_stats(Country.all)
    binding.pry
  end
  
  def menu
    puts "Type the name of a country to retrieve data or 'exit' to exit the program"
  end
  
  def print_stats(respond)
    puts "COVID-19 Statistics for #{@country.capitalize}:"
    puts " "
    respond.each.with_index(1) do |i, s|
      puts "#{i}. #{.name}"
    end
  end
end 
