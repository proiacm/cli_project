class Api 
  
  def self.get_data(country)
    url = "https://coronavirus-19-api.herokuapp.com/countries/#{country}"
    response = Net::HTTP.get(URI(url))
     country = JSON.parse(response)
     stats = Country.new(name: country["country"], today_cases: country["todayCases"], cases: country["cases"], deaths: country["deaths"], recovered: country["recovered"])
  end
end 