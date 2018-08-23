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

  def display_selection(input)
    puts "#{input.title}"
    puts "OVERALL SCORE: #{input.score}"
    puts "YEAR: #{input.year} \n "
    puts "HEROINE SCORE AND SUMMARY: #{input.info}"
  end

  def see_more(movie)
    puts "Would you like to see more? \n"
    puts "Y/N"
    answer = gets.strip
    movie.open_in_browser if ["Y"].include?(answer.upcase)

    puts "\n Thank you for using Badass Women in Film."
    puts "Here's the list if you want to select another film. \n"
    list
  end
end
