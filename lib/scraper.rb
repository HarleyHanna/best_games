require 'pry'
require 'nokogiri'
require 'open-uri'



class Scraper


  def scrape_from_list_page(url) #scrapes site for information about each game

    html = Nokogiri::HTML(open(url, 'User-Agent' => 'firefox')) #scrape site and convert to HTML

    html.css("table.clamp list td").each do |game| #each enumerator to gather information about each game

    end



end
