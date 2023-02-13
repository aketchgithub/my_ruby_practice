# Imagine building an app that manages a 
# user's music.Our app should keep track of all of the songs 
# a user enters and allow our user to browse 
# their existing songs. 

# class Song

#     @@all = []

#     attr_accessor :name

#     def initialize(name)
#        @name = name
#        @@all << self
#     end

#     def self.all
#         @@all
#     end

#     def self.print_all_song_names
#         self.all.each do |song|
#             puts song.name
#         end
#     end
# end

# hotline_bling = Song.new("Hotline Bling")
# thriller = Song.new("Thriller")

# Song.all

class MusicApp
    attr_reader :songs
  
    def initialize
      @songs = []
    end
  
    def add_song(song)
      @songs << song
    end
  
    def list_songs
      @songs.each_with_index do |song, index|
        puts "#{index + 1}. #{song}"
      end
    end
  end
  
  app = MusicApp.new
  app.add_song("Shape of You - Ed Sheeran")
  app.add_song("Sugar - Maroon 5")
  app.add_song("Girls Like You - Maroon 5")
  
  puts "List of songs:"
  app.list_songs
  