class Api 
  
  def self.get_data(country)
    url = "https://coronavirus-19-api.herokuapp.com/countries/#{country}"
    response = HTTParty.get(url)
    
    response.each do |c, v|
    Country.new(name: c["country"], cases: c["cases"], deaths: c["deaths"], recovered: c["recovered"])
    binding.pry
    end
  end
end 