#!/bin/bash
echo " "
echo "-Encontrar las pistas en la escena del crimen."
echo " "
grep CLUE ~/clmystery/mystery/crimescene
echo " "
echo "-Buscar a Annabel por la tercera pista."
echo " "
grep Annabel ~/clmystery/mystery/people
echo " "
echo "-Investigar a las 2 mujeres con nombre Annabel, visitar sus calles y casas, para la primera es Hart Place linea 40, y la segunda Buckingham Place en la linea 179."
echo " "
cat -n ~/clmystery/mystery/streets/Hart_Place | grep -w 40
echo " "
cat -n ~/clmystery/mystery/streets/Buckingham_Place | grep -w 179
echo " "
echo "-Revisamos las entrevistas que resultaron de revisar las casas."
echo " "
cat ~/clmystery/mystery/interviews/interview-47246024
echo " "
cat ~/clmystery/mystery/interviews/interview-699607
echo " "
echo "-La primera la descartmos pero con la segunda encontramos a la testigo. Ahora buscaremos el auto que diviso, un Honda azul cuya patente empieza por L337 y termina con 9."
echo " "
grep -A 5 L337 ~/clmystery/mystery/vehicles | grep -A 4 Honda | grep -A 3 Blue
echo " "
echo "-Encontramos 6 sospechosos, descartamos a Aron Pilhofer y a Heather Billings por la altura dada en la primera pista e investigamos al resto."
echo " "
grep Owens ~/clmystery/mystery/people
grep Jacqui ~/clmystery/mystery/people
echo " "
echo "-Descartamos a Erika Owens y Jacqui Maher por ser del genero femenino. Solo nos queda investigar a Joe Germuska y a Jeremy Bowers."
echo " "
grep Germuska ~/clmystery/mystery/people
grep Bowers ~/clmystery/mystery/people
echo " "
cat -n ~/clmystery/mystery/streets/Plainfield_Street | grep -w 275
cat -n ~/clmystery/mystery/streets/Dunstable_Road | grep -w 284
echo " "
echo "-Revisamos las entrevistas que resultaron de revisar sus casas."
echo " "
cat ~/clmystery/mystery/interviews/interview-29741223
echo " "
cat ~/clmystery/mystery/interviews/interview-9620713
echo " "
echo "-La primera entrevista arrojo que no podria ser el sospechoso y la segunda queda inconclusa. Ya descartamos a todos los demas sospechosos asi que procederemos a comparar las membresias de Jeremy Bowers con las que se encontraron en la billetera."
echo " "
grep -RH Bowers ~/clmystery/mystery/memberships/
echo " "
echo "Todas las membresias calzan, junto con el hecho de que el sospechoso saliera de viaje, hemos encontrado al culpable."
echo "EL CULPABLE ES JEREMY BOWERS."
