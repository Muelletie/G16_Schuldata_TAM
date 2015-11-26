class Playlist

	def initialize(name)
		@name = name
		@movies = []
		end

	def add_movie(movies)
		@movies << movies
		end

	def play
		puts "#{@name}'s Playlist"
		@movies.each do |movie|
			puts movie
			end
		end

	def to_s
		@movies.size.to_s
		end

	end

class Movie

	attr_reader :title
 	attr_writer :title
 	attr_accessor :title

 	def initialize(ptitle, prank=0)
 		@title = ptitle.capitalize
 		@rank = prank
 		end
 	def thumbs_up
 		@rank += 1
 		#rank = @rank + 1
 		end
 	def thumbs_down
 		@rank -= 1
 		#rank = @rank - 1
 		end
 	def to_s
 		"#{@title} hat ein Ranking von: #{@rank}."
 		end
	end

movie1 = Movie.new('TMNT',6)
movie2 = Movie.new('GIJ2',2)
movie3 = Movie.new('MIB II',9)

pl = Playlist.new("Tiemo")
pl.add_movie(movie1)
pl.add_movie(movie2)
pl.play
