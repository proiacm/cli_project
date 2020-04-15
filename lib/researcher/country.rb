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
    self.all.find {|n| n.name == name}
  end
  
  def self.find_or_create_by_name(name)
    found = self.find_by_name(name)
     if found                                    
      found                                   
     else
      self.create(name)
    end
  end
end 
