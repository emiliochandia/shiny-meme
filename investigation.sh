#!/bin/bash
grep 'CLUE' clmystery/mystery/crimescene >> Paso1.txt
grep 'Annabel' clmystery/mystery/people >> Paso2.txt #Esto nos muestra 2 Annabel de sexo femenino, por lo que se procede a investigar a ambas
head -n 40 clmystery/mystery/streets/Hart_place | tail -n 1 >> Paso3.txt #Este código es para investigar a Annabel Sun y encontrar su número de entrevista
cat clmystery/mystery/interviews/interview-47246024 >> Paso4.txt #Nos dice que esta persona no tiene nada que ver con el crimen
head -n 179 clmystery/mystery/streets/Buckingham_Place | tail -n 1 >> Paso5.txt #Procedemos a investigar a Annabel Church buscando su numero de entrevista
cat clmystery/mystery/interviews/interview-699607 >> Paso6.txt #En esta entrevista se nos menciona que el sospechoso tenía un Honda de color azul y que su patente empezaba con L337 y terminaba con 9
grep -A 5 "L337" clmystery/mystery/vehicles >> Paso7.txt #Como todas las patentes que comienzan con L337 terminan con 9, se utiliza este código mostrar en pantalla la linea contenedora de la patente más las cuatro anteriores
cat clmystery/mystery/memberships/AAA clmystery/mystery/memberships/Delta_SkyMiles clmystery/mystery/memberships/Museum_of_Bash_History clmystery/mystery/memberships/Terminal_City_Library | grep -c "Joe Germuska" >> Paso8.txt #Hay 2 sospechosos que coinciden con todas las descripciones dadas anteriormente. Este comando nos verificará si Joe Germuska tiene membresias en las cuatro localizaciones encontrada en la billetera del sospechoso.
cat clmystery/mystery/memberships/AAA clmystery/mystery/memberships/Delta_SkyMiles clmystery/mystery/memberships/Museum_of_Bash_History clmystery/mystery/memberships/Terminal_City_Library | grep -c "Jeremy Bowers" >> Paso9.txt #El código anterior nos dio como resultado un 0, lo que significa que Joe Garmuska no puede ser el criminal, por lo que se verifica si el último sospechoso lo es (Jeremy Bowers)
echo "Jeremy Bowers" | $(command -v md5 || command -v md5sum) | grep -qif /dev/stdin clmystery/encoded && echo CORRECT\! GREAT WORK, GUMSHOE. || echo SORRY, TRY AGAIN. >> Paso10.txt #Finalmente este código permite saber si realmente Jeremy Bowers es el criminal
