#!/bin/bash

cd ~/Dokumente/schuldata/

git add . -A

read -p "Commit eingeben: " eingabe
if [[ $eingabe ]]
	then 
	git commit -am '[ $eingabe ]'
	
	git push origin master
	
	echo "Sauber das lief ja"

else 
	echo "Da lief was schief"
fi 