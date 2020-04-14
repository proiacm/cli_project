class Country 
  
  attr_accessor :name, :c_cases, :deaths
  @@all = []
  
  def initialize(name:, c_cases:, deaths:)
    @name = name 
    @c_cases = c_cases
    @deaths = deaths
    @@all << self 
  end
  
  def self.all 
    @@all
  end 
  
end 
