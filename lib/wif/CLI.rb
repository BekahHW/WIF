class Wif::CLI

  def start
    puts "Welcome to Women in film!"
    puts ""
    puts "Let's get started with a sample of movies with amazing female characters."
    puts ""
    Wif::Scraper.scrape_heroines
    list
  end
end
