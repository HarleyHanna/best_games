require_relative './game.rb'
require_relative './environment.rb'
require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper


  #scrapes from provided website and gathers information about the top 10 games from website
  def self.scrape_from_list_page(url)
    games = []
    counter = 0
    page = Nokogiri::HTML(open(url, 'User-Agent' => 'firefox'))
      page.css("td.clamp-summary-wrap").each do |game| #iterates over each game, collecting score, description, title, and platform
        game_details = {}
        game_details[:score] = game.css("div.clamp-score-wrap div.metascore_w.large.game.positive").text.strip
        game_details[:description] = game.css("div.summary").text.strip
        game_details[:title] = game.css("a.title").text.strip
        game_details[:platform] = game.css("div.clamp-details div.platform span.data").text.strip
        games << game_details
        counter += 1
        if counter == 10
          break
        end
      end
    games
  end

  #Takes each game from scrape_from_list_page method and greates a new game instance with each attribute gathered from site
  def self.create_games_from_list(url)
    self.scrape_from_list_page(url).each do |game|
      Game.new(game[:title], game[:description], game[:score], game[:platform])
    end

  end
end
