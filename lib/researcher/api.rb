class Api 
  
  def self.get_data(state)
    url = "https://api.covid19api.com//live/country/us"
    respond = HTTParty.get(url)
    binding.pry
    respond.find do |c|
      State.new(name: c["Province"], c_cases: c["Confirmed"], deaths: c["Deaths"], recovered: c["Recovered"])
    end
  end
end 