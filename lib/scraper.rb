require 'open-uri'
require 'pry'
require 'nokogiri'


class Scraper



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
    end
    games


  end







end
