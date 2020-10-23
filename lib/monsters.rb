class Monsters
  attr_accessor :name, :size, :type ,:alignment ,:armor_class ,:hit_points

  @@all = []
    def initialize
      @@all << self
    end

  def self.all
      @@all
  end

end
