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



end
