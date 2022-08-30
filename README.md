# sql-data-base-building

Empezamos con la importacion de datos de csv a pyhton para poder tratarlos y editarlos facilmente

Una vez importados, los analizamos buscando anomalias en ellos y los vamos corrigiendo:
    A DESTACAR:
        - Las columnas 'last_update' me han parecido irrelevantes menos en la tabla de films puesto que en esta, creo que si que es importante ir revisando los datos antiguos por si los criterios de graduacion de la pelicula varian a lo largo de los años
        - He mantenido la columna de idioma original y he creado una funcion a traves de la cual se puden ir rellebando los huecos de esta tabla. (Encuentro que puede aportar informacion relevante)
        - La tabla old_HDD la he modificado completamente, redirigiendo la columna de category_id a la tabla de las peliculas (para tener centralizada toda la info de las peliculas). Tambien he sustiuido los nombres de los customers y de las peliculas por sus respectivos IDs de manera que si cualquiera de ellos editara su nombre, no perderiamos la relacion entre las tablas (fruto de esto, muchas peliculas no tienen etiqueta de categoria)
        
Realizada la limpieza, conectamos con SQL para poder exportar nuestros dataframes editados.

    - Conectamos con el servidos y con nuestra base de datos
    - Exportamos los data frames
    - Creamos nuevas tablas que me parecen oportunas para el flujo y orden de los datos
    - Definimos conexiones tanto de las PRIMARY como las FOREIGN Keys
    
 Una vez creadas las relaciones y exportados los datos, creamos el ERD para ver que tienen coherencia las conexiones entre si.
 
 Hecho esto, lanzamos algunas querys tontorronas para recorrer, filtrar y analizar los datos.
    