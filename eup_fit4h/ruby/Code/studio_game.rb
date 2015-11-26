system "clear"
name1 = "Larry"
health = 60
faktor = 3
divisor = 9
divisor2 = 9.0
name2 = "curly"
name3 = "moe"

puts "#{name1}'s health is #{health}"										  #oder 'name1 + "s health is" + health.to_s'

puts "----------"

puts "#{name1}'s health is #{health*faktor}"

puts "----------"

puts "#{name1}'s health is #{(health*faktor)/divisor}"
puts "#{name1}'s health is #{health/divisor}"
puts "#{name1}'s health is #{health/divisor2}"

puts "----------"

puts "Players:\n\t" +name1 +"\n\t" +name2 +"\n\t" +name3  #oder 'Players:\n\t#{name1}\n\t#{name2}...usw'

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

	end


