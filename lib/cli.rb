class CLI

  def start
      puts "Roll Initiative!"
      API.fetch_monsters
      self.monster_grimoire
  end

  def monster_grimoire
    # give user list of monster
    puts "Can you see that moster up ahead?"
    puts "Type 'yes' to roll perception check, or any other key to exit."

    user_input = gets.strip.downcase

    # if the user says yes
    if user_input == "yes" || user_input == "y"
      puts "You see a creature up ahead!"
      # display the list
      display_monster_grimoire
      select_quarry

    end

  end

  def display_monster_grimoire
    # access monsters
    # print each one out

    Monsters.all.each.with_index(1) do |monsters, index|
      puts "#{index}. #{monsters.name}"
    end
  end

  def select_quarry
    puts "Please select which creature you would like to learn about by selecting a number."
    index = gets.strip.to_i - 1

    until index.between?(0, Monsters.all.length - 1)
      puts "This monster does not exist. Please select a number from the list."
      index = gets.strip.to_i - 1

    end

    monster_instance = Monsters.all[index]

    display_monster_facts(monster_instance)

  end

  def display_monster_facts(monsters)
    sleep(1)
    puts "\n"
    puts monster.name
    puts "Size" + monster.size
    puts "Type" + monster.type
    puts "Alignment" + monster.alignment
    puts "Armor Class" + monster.armor_class
    puts "Hit Points" + monster.hit_points
  end



end
