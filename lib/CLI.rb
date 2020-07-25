require_relative './environment'

class CLI

  #calls all methods and initial greeting
  def call

    puts "Welcome to Best Games."
    puts "What genre of game are you looking for today?"
    list_genres
    input_to_num
    list_games

  end

  #lists genres
  def list_genres

    puts "1. Action"
    puts "2. Adventure"
    puts "3. Fighting Games"
    puts "4. First-Person Shooters"
    puts "5. Flight/Flying"
    puts "6. Party"
    puts "7. Platformer"
    puts "8. Puzzle"
    puts "9. Racing"
    puts "10. Real-Time Strategy (RTS)"
    puts "11. Role-Playing"
    puts "12. Simulation"
    puts "13. Sports"
    puts "14. Stategy"
    puts "15. Third-Person Shooter"
    puts "16. Turn-Based Strategy"
    puts "17. Wargames"
    puts "18. Wrestling"
    puts "Choose a genre (number)"
    @input = gets.strip
  end

  #converts input from string to integer
  def input_to_num
    @input = @input.to_i
  end

  #Takes input, goes to Scraper class and, based on input, gets a list of game objects
  def list_games
    if @input == 1
      Scraper.create_games_from_list('https://www.metacritic.com/browse/games/genre/metascore/action/all')
      Game.game_list
    elsif @input == 2
      # get list of Adventure games from scraper class and output
    elsif @input == 3
      # get list of Fighting games from Scraper class and output
    elsif @input == 4
      # get list of FPS games from Scraper class and output
    end
  end
end
