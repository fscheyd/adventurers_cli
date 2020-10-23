class API
  def self.fetch_monsters
    url = "https://api.open5e.com/monsters/"

    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)



    array_of_beasts = hash["results"]



    # "name" - name
    # "size" - size
    # "type" - type
    # "alignment" - alignment
    # "armor_class" - ac
    # "hit_points" - hp
    # :"name", :"size" ,:"alignment" ,:"armor_class" ,:"hit_points"

    array_of_beasts.each do |monster_hash|
      binding.pry
      monster = Monsters.new
        monster.name = monster_hash["name"]
        monster.size = monster_hash["size"]
        monster.type = monster_hash["type"]
        monster.alignment = monster_hash["alignment"]
        monster.armor_class = monster_hash["armor_class"]
        monster.hit_points = monster_hash["hit_points"]
    end
  end
end
