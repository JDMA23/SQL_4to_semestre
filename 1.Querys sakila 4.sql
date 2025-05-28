USE sakila;

/* Liste los registros de la tabla de actor con actor_id entre 10 y 20 o entre 30 y 40 o entre 50 y 60 */
SELECT * FROM actor 
WHERE (actor_id BETWEEN 10 AND 20) 
   OR (actor_id BETWEEN 30 AND 40) 
   OR (actor_id BETWEEN 50 AND 60);

/* Liste los registros de la tabla de actor cuyo nombre es 'Carmen' o que se llama 'PENELOPE' con apellido 'GUINES' */
SELECT * FROM actor 
WHERE first_name = 'Carmen' 
   OR (first_name = 'PENELOPE' AND last_name = 'GUINES');

/* Lista los registros de la tabla actor cuyo nombre comienza con 'A', 'B', 'H', 'J' ordenado por nombre */
SELECT * FROM actor 
WHERE first_name LIKE 'A%' 
   OR first_name LIKE 'B%' 
   OR first_name LIKE 'H%' 
   OR first_name LIKE 'J%' 
ORDER BY first_name;

/* Lista el identificador, título y descripción de la tabla film cuyo título contenga 'DINOSAUR' o 'CRAFT' */
SELECT film_id, title, description 
FROM film 
WHERE title LIKE '%DINOSAUR%' 
   OR title LIKE '%CRAFT%';

/* Lista los registros de la tabla film con rating = 'G' o 'PG' y con valor de renta menor o igual a 1.5 ordenado descendentemente por el valor de renta */
SELECT * FROM film 
WHERE rating IN ('G', 'PG') 
  AND rental_rate <= 1.5 
ORDER BY rental_rate DESC;

/* Lista los registros de la tabla film con duración de la renta mayor a 3 días y costo de renta menor a 3 dólares ordenada ascendente por el costo de renta */
SELECT * FROM film 
WHERE rental_duration > 3 
  AND rental_rate < 3 
ORDER BY rental_rate ASC;

/* Obtener todos los clientes de la tienda 1 que tengan un apellido que empiece con 'A' o 'B' */
SELECT * FROM customer 
WHERE store_id = 1 
  AND (last_name LIKE 'A%' OR last_name LIKE 'B%');

/* Obtener todas las películas que sean de clasificación 'PG' o 'G' y tengan una duración mayor a 100 minutos */
SELECT * FROM film 
WHERE rating IN ('PG', 'G') 
  AND length > 100;

/* Obtener todos los pagos realizados por clientes con un monto entre 5 y 10 dólares, excluyendo aquellos que pagaron exactamente 7 */
SELECT * FROM payment 
WHERE amount BETWEEN 5 AND 10 
  AND amount != 7;

/* Obtener los actores cuyos nombres comienzan con 'M' y que no tengan un apellido que comience con 'S' */
SELECT * FROM actor 
WHERE first_name LIKE 'M%' 
  AND last_name NOT LIKE 'S%';

/* Obtener los clientes que tienen una dirección en la tabla address, pero que no están activos */
SELECT * FROM customer 
WHERE active = 0 
  AND address_id IS NOT NULL;

/* Obtener todos los alquileres realizados en el año 2005, excepto aquellos hechos en diciembre */
SELECT * FROM rental 
WHERE YEAR(rental_date) = 2005 
  AND MONTH(rental_date) != 12;
