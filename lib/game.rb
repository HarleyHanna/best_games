class Game

  attr_accessor :name, :description, :score, :platform

  @@all = []

  def initialize(name, description, score, platform)
    @name = name
    @description = description
    @score = score
    @platform = platform
    @@all << self
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end


  def self.game_list
    self.all.each do |game|
      puts "Name: #{game.name}\nDescription: #{game.description}\nPlatform: #{game.platform}\nScore: #{game.score}"
    end
  end




end
