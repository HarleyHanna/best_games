class Game

  attr_accessor :name, :description, :score, :platform

  @@all = []

  #creates new instance of Game that takes in 4 attributes
  def initialize(name, description, score, platform)
    @name = name
    @description = description
    @score = score
    @platform = platform
    @@all << self
  end

  #provides access to all instances of Game
  def self.all
    @@all
  end

  #clears all instances of Game
  def self.destroy_all
    @@all.clear
  end



  def self.game_list_detail(input)
      array = self.all
      input -= 1
      game = array[input]
      puts "\nName: #{game.name}\nDescription: #{game.description}\nPlatform: #{game.platform}\nScore:#{game.score}\n\n"
  end

end
