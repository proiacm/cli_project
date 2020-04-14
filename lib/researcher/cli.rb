class Cli 
  
  def start 
    puts "Welcome to the COVID-19 statistics CLI!"
    menu
    @country = gets.strip.downcase
    Api.get_data(@state)
    print_states(State.all)
    binding.pry
  end
  
  def menu
    puts "Type the name of a country to retrieve data or 'exit' to exit the program"
  end
  
  def print_states(respond)
    puts "COVID-19 Statistics for #{@state.capitalize}:"
    puts " "
    respond.each.with_index(1) do |s, i|
      puts "#{i}. #{s.name}"
    end
  end
end 
