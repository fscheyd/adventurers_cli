class CLI

  def start
      puts "Roll Initiative!"
      API.fetch_monsters
  end

end
