class API

  def self.fetch_monsters
    url = "https://api.open5e.com/monsters/"
    binding.pry
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)

  end

end
