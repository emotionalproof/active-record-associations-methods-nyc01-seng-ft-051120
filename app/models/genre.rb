class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
    # self.songs.map do |song|
    #   song.artist
    # end.uniq.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    # self.songs.map do |song|
    #   song.artist.name
    # end.uniq

    self.artists.map(&:name)
  end
end
