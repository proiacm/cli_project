class Cli 
  
  def start 
    puts "Welcome to the COVID-19 statistics CLI!"
    
    @country = gets.strip.downcase
    Api.get_data(@state)
    print_states(State.all)
    binding.pry
  end
  
  # def print_states(respond)
  #   puts "COVID-19 Statistics for #{@state.capitalize}:"
  #   puts " "
  #   respond.each.with_index(1) do |s, i|
  #     puts "#{i}. #{s.name}"
  #   end
  # end
end 
