class Cli 
  
  def start 
    puts " "
    puts "Welcome to the COVID-19 statistics CLI!"
    puts " "
    puts "Type the name of a country to view data."
    puts " "
    @country = gets.strip.downcase
    Api.get_data(@country)
    print_stats(Country.all)
    prompt
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
  
  def prompt
    puts " "
    puts "Type the name of another country to view it's data or type 'exit' to exit."
    puts " "
    @country = gets.strip.downcase
      while @country != 'exit'
    Api.get_data(@country) if !Country.find_by_name(@country)
    print_stats(Country.all)
    end
    puts " "
    puts "Remember to wash your hands!"
    puts " "
  end
end 