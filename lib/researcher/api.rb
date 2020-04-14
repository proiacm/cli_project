class Api 
  
  def self.get_data(country)
    url = "https://coronavirus-19-api.herokuapp.com/countries/#{country}"
    response = HTTParty.get(url)
  
    response.each do |c|
      Country.new(name: c["country"], cases: c["cases"], deaths: c["deaths"], recovered: c["recovered"])
    end
  end
end 