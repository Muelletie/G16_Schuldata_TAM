puts "#a. ------------------------------"
def say_hello(name)
 	puts "Hallo mein Name ist #{name}"
end
say_hello("Ludwig")

puts "#b/c. -------------------------------"

def say_hello(name)
  "Hallo mein Name ist #{name}"
end
puts say_hello("Ludwig")
puts say_hello("ObiWahn")
puts say_hello("Luke")

puts "#d. -------------------------------"

def say_hello(name, health=180)
 "Hallo mein Name ist #{name} mit dem Wert #{health}"
end
puts say_hello("Ludwig")
puts say_hello("ObiWahn")
puts say_hello("Luke")

puts "#e. -------------------------------"

def time
	Time.now.strftime("%R")
	end
def say_hello(name, health=180)
	"Hallo mein Name ist #{name} mit dem Wert #{health} um #{time}"
end

puts say_hello("Peter")

puts "#A. -------------------------------"
class Game

	def initialize(title)
		@title = title
		@Player = []
		end
# b. die Klasse Game hat eine Methode add_player der ein SPieler hinzugefuegt wird
	def add_player(name)
		@Player << name
		end

	def to_s
		@Player.size.to_s
		end

	end

class Player

	def initialize(pname, phealth)		#C.----
 			@name = pname
 			@health = phealth
 	end
 	def hello 																				#G.----			
 		"Dem Spieler #{@name} geht es zu #{@health}% gut"
 	end
 	def blam
 		@health -=10
 		puts "#{@name} wurde geblamt !!!"
 	end
 	def w00t
 		@health +=10
 		puts "#{@name} wurde gew00tet!!!! Neuer Stand #{@health}"
 	end
end

obj_player1 = Player.new('hippy', 20)  #B./D.---
obj_player2 = Player.new('Bob', 20)
obj_game1 = Game.new('Knuckleheads')
obj_game1.add_player(obj_player1)
obj_game1.add_player(obj_player2)
puts "Das Game heißt #{@title} und hat die Spieler #{@Player}"