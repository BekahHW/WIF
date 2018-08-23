class Wif::CLI

  def start
    puts "Welcome to Women in film!"
    puts ""
    puts "Let's get started with a sample of movies with amazing female characters."
    puts ""
    Wif::Scraper.scrape_heroines
    list
  end

  def list
    puts "Here is a list of ten movies with kickass heroines:"

    movies = Kaw::Filmography.all.sample(10)
    movies.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.title}"
    end
    select_list(movies)
  end

  def select_list(movies)
    puts "\n Which movie would you like to know more about?"

    input = gets.strip

    if input.to_i.between?(1, movies.length)
      index = input.to_i - 1
      display_selection(movies[index])
      see_more(movies[index])
    end
  end
end
