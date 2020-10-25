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

    end

  end

  def display_monster_grimoire
    puts "Please select which creature you would like to learn about."
    # access monsters
    # print each one out
    Monsters.all.each do |monster|

  end


end
