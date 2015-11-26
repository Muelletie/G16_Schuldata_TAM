class Player

	attr_accessor :name, :score, :health

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
 	def score
 		@health + @name.length
 		end
end
# a. erstellen Sie eine Klasse Game mit einem Konstruktor, der eine Instanzvariable title 
#    anlegt und fuellt und ein leeres Array mit dem Name Player enthaelt.
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
# c. eine Methode play erzeugt folgenden Ausdruck:
	def play
# 	There are 3 players in Knuckleheads: 
		puts "There are #{to_s} players in #{@title}"
# 	I'm Moe with a health of 100 and a score of 103.
# 	I'm Larry with a health of 60 and a score of 65.
# 	I'm Curly with a health of 125 and a score of 130.
		@Player.each do |spieler|
			puts "I'm #{spieler} with a health of #{@health} and a score of #{score}"
			end
# 	Moe got blammed!
# 	Moe got w00ted!
# 	Moe got w00ted!
# 	I'm Moe with a health of 120 and a score of 123.
# 	Larry got blammed!
# 	Larry got w00ted!
# 	Larry got w00ted!
# 	I'm Larry with a health of 80 and a score of 85.
# 	Curly got blammed!
# 	Curly got w00ted!
# 	Curly got w00ted!
# 	I'm Curly with a health of 145 and a score of 150.
		end
	end

obj_player1 = Player.new('Moe', 20)  
obj_player2 = Player.new('Larry', 20)
obj_player3 = Player.new('Curly', 20)
obj_game1 = Game.new('Knuckleheads')
obj_game1.add_player(obj_player1)
obj_game1.add_player(obj_player2)
obj_game1.add_player(obj_player3)
obj_game1.play
