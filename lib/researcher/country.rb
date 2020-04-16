class Country
  
  attr_accessor :name, :today_cases, :cases, :deaths, :recovered
  @@all = []
  
  def initialize(name:, today_cases:, cases:, deaths:, recovered:)
    @name = name
    @today_cases = today_cases
    @cases = cases
    @deaths = deaths
    @recovered = recovered
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  def self.find_by_name(name)
    @@all.find {|c| c.name == name}
  end
end 
