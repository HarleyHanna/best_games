require_relative './environment'

class CLI

  #calls all methods and initial greeting
  def call

    puts "Welcome to Best Games."
    puts "What genre of game are you looking for?"
    list_genres
    input_to_num
    list_games
    Game.destroy_all
    puts "Would you like to select another Genre?(y/n)"
    input = gets.strip
    if input == 'y'
      CLI.new.call
    elsif input == 'n'
      puts "Thank you for using Best Games."
    end
  end

  #lists_genres that users can choose from
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
    puts "14. Strategy"
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

  #goes to Scraper class and gathers information based on URL provided, lists games from Game class
  def create_and_list(url)
    Scraper.create_games_from_list(url)
    Game.game_list
  end

  #Takes input and uses create_and_list method to give the user information
  def list_games
    if @input == 1
      create_and_list('https://www.metacritic.com/browse/games/genre/metascore/action/all')
    elsif @input == 2
      create_and_list('https://www.metacritic.com/browse/games/genre/metascore/adventure/all')
    elsif @input == 3
      create_and_list('https://www.metacritic.com/browse/games/genre/metascore/fighting/all')
    elsif @input == 4
      create_and_list('https://www.metacritic.com/browse/games/genre/metascore/first-person/all')
    elsif @input == 5
      create_and_list('https://www.metacritic.com/browse/games/genre/metascore/flight/all')
    elsif @input == 6
      create_and_list('https://www.metacritic.com/browse/games/genre/metascore/party/all')
    elsif @input == 7
      create_and_list('https://www.metacritic.com/browse/games/genre/metascore/platformer/all')
    elsif @input == 8
      create_and_list('https://www.metacritic.com/browse/games/genre/metascore/puzzle/all')
    elsif @input == 9
      create_and_list('https://www.metacritic.com/browse/games/genre/metascore/racing/all')
    elsif @input == 10
      create_and_list('https://www.metacritic.com/browse/games/genre/metascore/real-time/all')
    elsif @input == 11
      create_and_list('https://www.metacritic.com/browse/games/genre/metascore/role-playing/all')
    elsif @input == 12
      create_and_list('https://www.metacritic.com/browse/games/genre/metascore/simulation/all')
    elsif @input == 13
      create_and_list('https://www.metacritic.com/browse/games/genre/metascore/sports/all')
    elsif @input == 14
      create_and_list('https://www.metacritic.com/browse/games/genre/metascore/strategy/all')
    elsif @input == 15
      create_and_list('https://www.metacritic.com/browse/games/genre/metascore/third-person/all')
    elsif @input == 16
      create_and_list('https://www.metacritic.com/browse/games/genre/metascore/turn-based/all')
    elsif @input == 17
      create_and_list('https://www.metacritic.com/browse/games/genre/metascore/wargame/all')
    elsif @input == 18
      create_and_list('https://www.metacritic.com/browse/games/genre/metascore/wrestling/all')
    elsif (1..18).include?(@input) == false
      puts "Please enter a valid number (1-18)"
      CLI.new.call
    end
  end
end
