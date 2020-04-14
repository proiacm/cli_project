class Api 
  
  def self.get_data
    url = "https://api.covid19api.com//live/country/us"
    response = HTTParty.get(url)
    response.each do |c|
      State.new(name: c["Province"], c_cases: c["Confirmed"], deaths: c["Deaths"], recovered: c["Recovered"])
    end
  end
end 