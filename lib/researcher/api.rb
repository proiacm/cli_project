class Api 
  
  def self.get_data(country)
    url = "https://coronavirus-19-api.herokuapp.com/countries/#{country}"
    response = HTTParty.get(url)
    
    stats = response.map {|k,v| { k.to_s => v.to_s } }
    
    stats.each do |c|
      Country.new(name: c["country"], c_case: c["cases"], death: c["deaths"], recover: c["recovered"])
    
    end
    binding.pry
  end
end 