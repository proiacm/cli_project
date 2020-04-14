class State
  
  attr_accessor :name, :c_cases, :deaths, :recovered
  @@all = []
  
  def initialize(name:, c_cases:, deaths:, recovered:)
    @name = name 
    @c_cases = c_cases
    @deaths = deaths
    @recovered = recovered
    @@all << self 
  end
  
  def self.all 
    @@all
  end 
  
end 
