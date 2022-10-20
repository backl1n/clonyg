#!/bin/bash
#ascci art signature
if [[ "$1" = '-w' ]]; then
    cat ascii.dat

elif [[ "$1" = '-h' ]]; then
    cat help.txt

#clone debug
elif [[ "$1" = "-d" ]]; then
    #progress bar 
    echo "telechargement des repos  en cours "
    #recuperation pseudo
    #fichier contenant les usernames
    fichier="username.dat"
    oldIFS=$IFS # sauvegarde du séparateur de champ
    IFS=$'\n'   # nouveau séparateur de champ, le caractère fin de ligne

    for ligne in $(<$fichier); do
        #afficher le pseudo
        #telecharge
        git clone https://gitlab.com/$ligne/$2 ./projet/$2/$ligne
    done

#clone
elif [[ "$1" = "-c" ]]; then
    echo "telechargement des repos  en cours "
    #recuperation pseudo
    #fichier contenant les usernames
    fichier="username.dat"
    oldIFS=$IFS # sauvegarde du séparateur de champ
    IFS=$'\n'   # nouveau séparateur de champ, le caractère fin de ligne

    for ligne in $(<$fichier); do
        #telecharge en mode silencieux
        git clone -q https://gitlab.com/$ligne/$2 ./projet/$2/$ligne
    
    done
fi
