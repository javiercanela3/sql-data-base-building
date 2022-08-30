----------------------------------------------
#------------------PARTE 1--------------------
----------------------------------------------
/*
Query que nos muestra practicamente toda la 
informacion relacionada con la pelicula en la 
que sale cada actor
*/

SELECT *
	
FROM old_HDD

LEFT JOIN actor
on old_HDD.actor_id=actor.actor_id

LEFT JOIN film
on old_HDD.film_id=film.film_id

LEFT JOIN category
on film.category_id=category.category_id

LEFT JOIN language
on film.language_id=language.language_id
;



----------------------------------------------
#------------------PARTE 2--------------------
----------------------------------------------
/*
Query que nos muestra las 10 peliculas con mas 
actores o actrices
*/

SELECT 
	film.title as 'TITULO',
    count(old_HDD.actor_id) as 'NUM_ACTORES'
FROM film

LEFT JOIN old_HDD
on old_HDD.film_id=film.film_id

GROUP BY film.title
ORDER BY  count(old_HDD.actor_id) DESC
LIMIT 10
;

----------------------------------------------
#------------------PARTE 3--------------------
----------------------------------------------
/*
Query que nos dice los generos mas alquilados
*/

SELECT *
	category.name as 'CATEGORY',
    COUNT(rental.rental_id) as 'RENTALS'
FROM rental

LEFT JOIN inventory
ON inventory.inventory_id=rental.inventory_id

LEFT JOIN film
on inventory.film_id=film.film_id

LEFT JOIN category
ON category.category_id=film.film_id
WHERE category.category_id IS NOT NULL

GROUP BY category.name

ORDER BY  COUNT(rental.rental_id) DESC
LIMIT 5
;

/*Evidentemente esta informacion es erronea
puesto que analizando las bases de datos, en el 
inventario solo constan 1000 peliculas mientras
que en el historial de alquileres podemos ver
que se hace referencia a articulos inexistentes
*/

