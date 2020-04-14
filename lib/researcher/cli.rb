class Cli 
  
  def start 
    puts "Welcome to the COVID-19 USA statistics CLI!"
    puts "Type the name of a state to view stats or type 'exit' to exit."
    @state = gets.strip.downcase
    Api.get_data
    print_stats(state)
    
  end
  
  def print_stats(state)
    puts "COVID-19 Statistics for #{state.capitalize}:"
    puts " "
    State.all.each do |s, i|
      puts "#{i}. #{c_cases}"
    end
  end
end 
