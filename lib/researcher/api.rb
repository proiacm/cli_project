class Api 
  
  def self.get_data(country)
    url = "https://coronavirus-19-api.herokuapp.com/countries/#{country}"
    response = Net::HTTP.get(URI(url))
     if response != "Country not found"
     data = JSON.parse(response)
      Country.new(name: data["country"], today_cases: data["todayCases"], cases: data["cases"], deaths: data["deaths"], recovered: data["recovered"])
    end
  end
end 