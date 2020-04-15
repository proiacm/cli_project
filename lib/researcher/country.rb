class Country
  
  attr_accessor :name, :c_case, :death, :recover
  @@all = []
  
  def initialize(name:, c_case:, death:, recover:)
    @name = name
    @c_case = c_case
    @death = death
    @recover = recover
    @@all << self 
  end
  
  def self.all 
    @@all
  end
end 
