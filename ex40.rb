# class Song
class Song
  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song
    @lyrics.each { |line| puts line }
    puts "\n"
  end
end

happy_bday_lyrics = ["Happy birtday to you", "I don't want to get sued", "So I'll stop right there"]
happy_bday = Song.new(happy_bday_lyrics)

bulls_on_parade_lyrics = ["They rally around tha family", "With pockets full of shells"]
bulls_on_parade = Song.new(bulls_on_parade_lyrics)

giro_tondo_lyrics = ["Giro giro tondo", "casca il mondo, casca la terra", "tutti giu per terra"]
giro_tondo = Song.new(giro_tondo_lyrics)

happy_bday.sing_me_a_song
bulls_on_parade.sing_me_a_song
giro_tondo.sing_me_a_song
