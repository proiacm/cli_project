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
end 
