class Wif::Filmography
  attr_accessor :title, :info, :score, :heroine_rank, :movie_url, :year

  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end
end
