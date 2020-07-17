# IIC1005: Tarea 1

## :question: Sobre la estructura de este repositorio

Este es el repositorio base de tu tarea. Su estructura es la siguiente:

```
.
├── README.md
├── dataset
│   ├── data-iic1005-2019.csv
│
├── parte_1
│   └── Parte_1.ipynb
└── parte_2
    ├── css
    │   └── style.css
    ├── img
    │   └── file_20161025033310.jpg
    ├── index.html
    └── js
        └── script.js
```

Una *overview* de lo descrito anteriormente es:

| Archivo                       | Descripción                                                  |
| ----------------------------- | ------------------------------------------------------------ |
| README.md                     | Este archivo.                                                |
| dataset/data-iic1005-2019.csv | Archivo ```.csv``` que contiene información sobre vehículos siniestrados. |
| parte_1/Parte_1.ipynb         | *Notebook* base de la primera parte de la tarea.             |
| parte_2/css/style.css         | Hoja de estilo base para la parte 2. Inicialmente vacío.     |
| parte_2/img/auto-robado.jpg   | Imagen de un auto siendo robado, incluido solo para poder hacer ```push``` de esta carpeta del repositorio, donde se espera que almacenes las imágenes de las que no dispones hipervínculo. |
| parte_2/index.html            | Archivo ```html``` base de la parte 2 de tu tarea.           |
| parte_2/js/script.js          | Archivo JavaScript base para la parte 2 de tu tarea. Inicialmente vacío. |
| TG1_IIC1005_2019_1.pdf        | Enunciado de la tarea.                                       |

## :star: Recordatorios amistosos

- Se revisará el último *commit* antes de la fecha de entrega. Si quieres que se te corrija un *commit* posterior, escríbelo en la sección de **Consideraciones**. Recuerda que existe un descuento de 0.5 puntos por cada hora o fracción de retraso
- Recuerda respetar el formato de entrega descrito en el enunciado. No hacerlo te expondrá a descuentos en tu calificación.

## :warning: Consideraciones

-En la parte 1, al graficar los meses, sólo aparecerán los meses que se encontraron en mis datos luego de estandarizar, como en mis datos no se encontró: Agosto, Septiembre ni Noviembre, al leer los datos altair no generó una barra para esos meses. Había logrado hacerlo dejando las fechas en formato datetime, pero, decidí seguir las instrucciones y dejarlas como strings.

-En la parte 1, para lograr ordenar y seleccionar los 5 elementos más 
robados me base en el ejemplo "Top K Letters" de 
los "Case Studies" en la "Example Gallery", en link al ejemplo es: 
https://altair-viz.github.io/gallery/top_k_letters.html.

-En la parte 2, los colores de los gráficos son diferentes porque se guardaron previamente por separado para poder seguir la distribución del bonus.

-En la parte 2, ocupé un solo mapa con marcadores, popups y clusters porque al ir agregando los marcadores en dos listas (layers de grupos y de clusters) los marcadores que aparecieran 
en un mapa se desaparecerían del otro. De esto me di cuenta cuando en el mapa de clusters se deshizo un grupo y los que aparecieron en ese mapa desaparecieron del primero. Dejé de todos 
modos la lista, el grupo y la key, que era cosa de agrearlo mediante el comando "L.control.layers(marcadores).addTo(mymap)" en un segundo mapa para que fallara.

-En la parte 2, para hacer el segundo bonus se utilizó la librería CSS Bootstrap, todas las importaciones necesarias están implementadas en el head del html.
