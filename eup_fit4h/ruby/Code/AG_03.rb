# Einrichten einer Kundenklasse.

# Eine Klasse customer soll eingerichtet werden.
class Custumer
# Beim Anlegen eines Customer-Objektes muss als notwendiger Parameter eine Kontonummer
# (Instanzvariable bank_account) eingegeben werden.
	def initialize (pbank_account, plastname="", pfirstname="", pstreet="", pcity="")
		@bank_account = pbank_account
		# Optional kann auch der Nachname des Kunden (lastname) eingegeben werden.
		@lastname = plastname
		@firstname = pfirstname
		@street = pstreet
		@city = pcity
	end
# Erstellen Sie SET und GET - Methoden für die Eigenschaften (Instanzvariablen)
# firstname, street, city. Z.B heisst die Set-Methode fuer street: set_street(pstreet)
	
# Eine Methode print_address soll beim Aufruf "puts obj.print_address' eine Ausgabe wie folgt erzeugen:
# Konto:................9999
# Name:.................Theo Lodgz
# Strasse:..............Hermelinweg 7
# Ort:..................22159 Hamburg
	def print_address
		puts "Konto:.............#{@bank_account}\n"
		puts "Name:..............#{@lastname}\n"
		puts "                   #{@firstname}\n"
		puts "Strasse:...........#{@street}\n"
		puts "Ort:...............#{@city}"
	end
# Legen Sie das Objekt obj an, rufen Sie die entsprechenden Get-Methoden für die Dateneingabe auf,

end
# erzeugen Sie die Kontrollausgabe.
test1 = Custumer.new('007')

puts test1.print_address