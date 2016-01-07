class MoviesController < ApplicationController
	def index
			@x = %w(Film_1 Film_2 Film_3)
			@movies = Movie.all
	end

	def seite
			@x = ["Film 4", "Film 5", "Film 6"]
	end

	

end
