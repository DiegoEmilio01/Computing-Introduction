# base-tc1
Repositorio base de la tarea chica 1 del primer semestre de 2019.

Comentarios:

Parte 1: link de mi usuario en Codecademy para comprobar la realización del tutorial: https://www.codecademy.com/DiegoEmilio01

Parte 2: El repositorio se llama mystery y se subio como carpeta borrando el archivo .git que contenía. El ejecutable investigation.sh (ubicado dentro de la carpeta mystery) es el que entrega una descripción de los pasos que realicé junto con los outputs de los comandos que me permitieron resolver el misterio.

Parte 3: descripción echo " " && sed −n ’/Z/p’ encoded | tail −n 6 | cut −c 8,22,23,41 && echo " "

- echo " ": inserta un espacio en blanco que se aprecia como una línea en blanco.

- &&: operador que ejecuta el comando siguiente si se logró ejecutar el anterior.

- sed -n '/Z/p' encoded: el comando sed toma un input (en este caso el arhivo encode) y debido al -n silencia ciertos patrones que vienen dados por los parámetros del comando. En este caso el patrón que busca es "Z". Luego, gracias al parámetro "p" (porque por default no lo haría por haber usado el atributo -n), imprime un output con todas las líneas que contangan el string "Z".

- |: toma el output del comando sed (las líneas que contenían los patrones) y lo ingresa como input del comando tail.

- tail -n 6: recibe varias líneas de un archivo y gracias a los atributos -n y 6 selecciona las últimas 6 lineas de su input y las convierte en output. (En este caso ya son 6 líneas desde el comando sed así que no corta nada).

- |: mismo operador descrito pero ahora el output de tail ingresa como input en cut.

- cut -c 8,22,23,41: imprime el input cortando (y dejando) por cada línea sólo los carácteres indicados que están luego del operador -c. En este caso los índices descritos corresponden a una letra del nombre (el 8), dos espacios (el 22 y 23) y una letra del apellido (el 41) por cada línea. Al imprimir las líneas forma el nombre del culpable (notar que tanto el nombre como el apellido tienen 6 letras de largo).

- &&: operador descrito anteriormente.

- echo " ": hace lo mismo que el primer comando echo, pero al final. Ambos entregan formato en este caso.

- En general, el comando toma un archivo codificado (encode), luego lo decifra mediante las reglas descritas y finalmente imprime por columnas el nombre del culpable escondido en él.
