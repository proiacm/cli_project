class Country
  
  attr_accessor :name, :cases, :deaths, :recovered
  @@all = []
  
  def initialize(name:, cases:, deaths:, recovered:)
    @name = name
    @cases = cases
    @deaths = deaths
    @recovered = recovered
    @@all << self 
  end
  
  def self.all 
    @@all
  end 
  
  def self.find_by_name(name)
    @@all.select {|n| @name == name}
  end
  
end 
