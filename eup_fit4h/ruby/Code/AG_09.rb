# # 1. Legen Sie ein Array an mit den Zahlen 15 bis 20 an.
# array1 = (15 .. 20).to_a
# # a. geben Sie diese Zahlen in einem Block aus
# puts array1  #// array.each do |z|
# 						 #      puts z.to_s
# 						 #     end

# # b. geben Sie die Zahlen mit dem Index etwa so aus: Index: 0 - Wert: 15
# ac = array1.size																	#array1.each_with_index do |z,i|
# i = 0																							#		puts "Index: #{i} - Wert: #{z}"
# ac.times do																				#end
# 	puts "Index: #{i} - Wert :#{array1[i]}"
# 	i = i+1
# end
# # c. erzeugen Sie in einem Block einen Hash, wobei Sie die Arraywerte als Index nutzen und als 
# #    Wert eine Zufallszahl zwischen 100 und 200 speichern. 
# y = 15
# ac.times do																# test = Hash.new
# test = { y => rand(100)+100 }							# array1.each do |ieV|		(irgend eine Variable)
# puts test																	#  	array1[ieV] = rand(100..200) 
# y = y+1 																	#  end
# 																					#
# end

# # d. Geben Sie diesen Hash anschließen etwa so aus: Index: 15 - Wert: 121
# test.each do |mykey, myVal|					# => mit dem each wird jeder wert array angefasst. 
# 																		#  	mykey ist ein wirkühlicher Variablenname für den indexwert
# 	puts															#   und myval ist ein wirkühlicher Variablenname für den Wert
# 																		#   der da hinter steht.
# end
# e. Ergänzen Sie die Ausgabe. Wenn der Wert größer als 150 ist, dann sieht die Ausgabe aus:
#    Index: 15 - Wert: 151. WOW
# f. Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Array
# g. ! Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Hash mit der Zahl 
# 		als Schlüssel

# Zusatz Zahlen im Array und im Hash:
# a. Legen Sie ein Array an mit 10 Primzahlen. Die Ausgabe des Arrays erzeugt:
# 	1 ist einstellig
# 	3 ist einstellig
# 	...
# 	11 ist zweistellig
#   ...
# b. Legen Sie zur Übung einen Hash personen an, mit den keys vorname, nachname, stadt und den Werten Theo, Sommer, Lodz. Machen Sie eine Ausgabe, die 'vorname: Theo + neue Zeile' ausgibt
# c. Fortsetzung Aufgabe a: 
# Speichern Sie beim Durchlaufen des Arrays die Werte in einem Hash mit der Bezeichnung prims, sodass die jeweilige Primzahl den Schlüssel bildet und der Wert den Text 'ist einstellig', 'ist zweistellig'
# d. Sortieren Sie den Hash, sodass die Ausgabe folgendermaßen möglich wird:
# Einstellig: 1,3,5 ..
# Zweistellig: 11, 13, ..
# e. Fortsetzung Aufgabe b: 
# Speichern Sie den Hash in dem Array adressen und legen Sie zwei weitere Hashes personen mit den gleichen Keys und anderen Werten an. Durchlaufen Sie das Array, sodass folgende Ausgabe erfolgt.
# 1.Person:
# Name: Theo
# Vorname: Sommer
# Stadt: Lodz
# 2. Person:
# ......
puts "----------------------------------------------------"
# 2. Worte
# a. Bilde ein Array mit den Worten: Pflaume, Bauschaum, Auster
array01 = ["Pflaume", "Bauschaum", "Auster"]
# b. Alle Element, die den String aus enthalten sollen ausgegeben werden.
puts array01.select { |s| s =~ /[Aa]us/ }
puts "----------------------------------------------------"
# c. erzeugen eine Ausgabe nach der Länge der Worte von klein nach groß
puts array01.sort_by {|s| s.length}
puts "----------------------------------------------------"
# d. Ein Hash wird ausgegeben, das Wort als Index, die Anzahl der Buchstaben als Wert
hash1 = Hash.new
	array01.each do |x|
		hash1[x] = x.length
end 
#puts hash1
hash1.each do |mykey, val|
hash1.sort_by { |mykey, val| mykey.length }
	puts "#{mykey} hat #{val} Buchstaben"
end


# 3. Lottogenerator:
# a. Schreiben Sie einen kleinen Lottozahlengenerator. Es sollen 7 Zahlen aus 49 Möglichkeiten in einem Array ausgegeben werden.
# b. Peter, Paul und Mary bilden einen Hash, etwa derart: lotto = { "Peter" => [ 2,22,33,11,23,32,26 ], ...}

# 4. Vergleich:
# str_1 = "Programmieren, Federball, Whisky"
# str_2 = "Fussball, Bier, Programmieren"
# Die Ausgabe lautet:
# ergebnis = { :diff => ["Federball", "Whisky", "Fussball", "Bier"], :match => ["Programmieren"]}