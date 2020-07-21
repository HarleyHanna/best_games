require 'pry'
require 'nokogiri'
require 'open-uri'



class Scraper




  def self.scrape_from_list_page(url) #scrapes site for information about each game

    html = Nokogiri::HTML(open(url, 'User-Agent' => 'firefox')) #scrape site and convert to HTML
    games = []
    counter = 0

      html.css("table.clamp-list td").each do |game| #each enumerator to gather information about each game
          game_details = {}
          game_details[:score] = game.css()
          game_details[:name] = game.css()
          game_details[:description] = game.css()
          games << game_details
          binding.pry
      end
    puts games
  end




end
