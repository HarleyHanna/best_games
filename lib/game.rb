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

  #lists out all Games in class variable @@all
  def self.game_list
    self.all.each do |game|
      puts "Name: #{game.name}\nDescription: #{game.description}\nPlatform: #{game.platform}\nScore: #{game.score}\n \n"
    end
  end




end
