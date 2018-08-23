class Wif::Scraper

  BASE_URL = "https://editorial.rottentomatoes.com/article/fearless-female-movie-heroes-who-inspire-us/"

  def self.scrape_heroines
    doc = Nokogiri::HTML(open(BASE_URL))

    doc.search(".articleContentBody .clearfix").each do |each_movie|

      movie = Wif::Filmography.new
    end
  end
end
