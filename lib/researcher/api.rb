class Api 
  
  def self.get_data(country)
    url = "https://api.covid19api.com//live/country/#{country}"
    respond = HTTParty.get(url)
    respond.each do |c|
      Country.new(name: c["Country"], c_cases: c["Confirmed"], deaths: c["Deaths"], recovered: c["Recovered"])
    end
  end
end 