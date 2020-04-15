class Api 
  
  def self.get_data(country)
    url = "https://coronavirus-19-api.herokuapp.com/countries/#{country}"
    response = Net::HTTP.get(URI(url))
      country = JSON.parse(response)
    #stats = country.transform_values(&:to_s)    
    

    
    #binding.pry
    
    #stats.each do |c|
     stats = Country.new(name: country["country"], c_case: country["cases"], death: country["deaths"], recover: country["recovered"])
    
    
  
  end
end 