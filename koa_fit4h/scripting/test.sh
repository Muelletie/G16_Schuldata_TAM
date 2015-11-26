#!/bin/bash

read -p "Geben Sie einen Dateinamen ein: " eingabe
if [[ -e $eingabe ]]
	then 
	echo "Datei: ${eingabe} gefunden"
fi 