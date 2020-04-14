class State
  
  attr_accessor :name, :c_cases, :deaths, :recovered
  @@all = []
  
  def initialize(name:, c_cases:, deaths:, recovered:)
    @name = name
    @c_cases = c_cases
    @deaths = deaths
    @recovered = recovered
    @@all << self unless @@all.include?(self)
  end
  
  def self.all 
    @@all
  end 
  
  def self.find_by_name(name)
    @@all.select {|n| @name == name}
  end
  
end 
