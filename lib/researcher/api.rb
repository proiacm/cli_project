class Api 
  
  def self.get_data(country)
    url = "https://api.covid19api.com//live/country/#{country}"
    respond = HTTParty.get(url)
    
    binding.pry
  end
end 