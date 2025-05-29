USE sakila;

-- Liste las ciudades (id y nombre) y las tiendas que se encuentran en cada ciudad, use RIGHT JOIN para mostrar TODAS las ciudades haya o no tiendas en ellas
SELECT city.city_id, city.city, store.store_id
FROM store
RIGHT JOIN address ON store.address_id = address.address_id
RIGHT JOIN city ON address.city_id = city.city_id;

-- Liste los países (id y nombre) y las ciudades que se encuentran en cada país, use RIGHT JOIN para mostrar TODOS los países haya o no ciudades en ellos
SELECT country.country_id, country.country, city.city_id, city.city
FROM city
RIGHT JOIN country ON city.country_id = country.country_id;

-- Liste las ciudades (id y nombre) y los clientes que se encuentran en cada ciudad, use RIGHT JOIN para mostrar TODAS las ciudades haya o no clientes en ellas
SELECT city.city_id, city.city, customer.customer_id
FROM customer
RIGHT JOIN address ON customer.address_id = address.address_id
RIGHT JOIN city ON address.city_id = city.city_id;

-- Liste las películas que para la tienda 1 no hayan sido rentadas
SELECT film.film_id, film.title
FROM inventory
RIGHT JOIN film ON inventory.film_id = film.film_id
LEFT JOIN rental ON inventory.inventory_id = rental.inventory_id
WHERE inventory.store_id = 1 AND rental.rental_id IS NULL;

-- Liste los nombres de los actores y en cuantas películas del catalogo participa
SELECT actor.first_name, actor.last_name, COUNT(film_actor.film_id) AS cantidad_peliculas
FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
GROUP BY actor.actor_id;

-- Liste los nombres de las películas y en cuantas tiendas están registradas
SELECT film.title, COUNT(DISTINCT inventory.store_id) AS cantidad_tiendas
FROM film
JOIN inventory ON film.film_id = inventory.film_id
GROUP BY film.film_id;

-- Liste los idiomas y cuantas películas están habladas en ese idioma
SELECT language.name, COUNT(film.film_id) AS cantidad_peliculas
FROM language
LEFT JOIN film ON language.language_id = film.language_id
GROUP BY language.language_id;

-- Liste cuantas veces ha sido rentada cada película en el catalogo
SELECT film.title, COUNT(rental.rental_id) AS cantidad_rentas
FROM film
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental ON inventory.inventory_id = rental.inventory_id
GROUP BY film.film_id;

-- Liste cuantos pagos se realizaron en cada renta
SELECT rental_id, COUNT(payment_id) AS cantidad_pagos
FROM payment
GROUP BY rental_id;

-- Liste cuantas películas ha rentado cada cliente
SELECT customer_id, COUNT(rental_id) AS cantidad_peliculas_rentadas
FROM rental
GROUP BY customer_id;

-- Liste cuantas películas ha rentado cada miembro del staff
SELECT staff_id, COUNT(rental_id) AS cantidad_rentadas
FROM rental
GROUP BY staff_id;

-- Liste los clientes que han generado pagos con un monto total mayor a $10
SELECT customer_id, SUM(amount) AS total_pagado
FROM payment
GROUP BY customer_id
HAVING total_pagado > 10;

-- Liste los empleados que han generado pagos con un monto total mayor a $100
SELECT staff_id, SUM(amount) AS total_pagado
FROM payment
GROUP BY staff_id
HAVING total_pagado > 100;

-- Calcule el número de pagos realizados por cada cliente en el mes de junio
SELECT customer_id, COUNT(payment_id) AS cantidad_pagos_junio
FROM payment
WHERE MONTH(payment_date) = 6
GROUP BY customer_id;

-- Calcule la cantidad de películas por cada duración de renta (rental_duration)
SELECT rental_duration, COUNT(*) AS cantidad_peliculas
FROM film
GROUP BY rental_duration;

-- Calcule la cantidad total de pagos recibidos cada año
SELECT YEAR(payment_date) AS anio, SUM(amount) AS total_pagado
FROM payment
GROUP BY anio;

-- Calcule el monto total de pagos por cada día de la semana
SELECT DAYNAME(payment_date) AS dia_semana, SUM(amount) AS total_pagado
FROM payment
GROUP BY dia_semana;

-- Liste los días donde el total de pagos fue mayor a $50
SELECT DATE(payment_date) AS fecha, SUM(amount) AS total_pagado
FROM payment
GROUP BY fecha
HAVING total_pagado > 50;

-- Calcule cuántas películas hay en cada duración (length) específica
SELECT length, COUNT(*) AS cantidad_peliculas
FROM film
GROUP BY length;

-- Calcule la cantidad de pagos realizados en cada tienda
SELECT staff.store_id, COUNT(payment.payment_id) AS cantidad_pagos
FROM payment
JOIN staff ON payment.staff_id = staff.staff_id
GROUP BY staff.store_id;

-- Calcule el monto total de pagos por cada cliente, pero solo para aquellos que han realizado más de 5 pagos
SELECT customer_id, SUM(amount) AS total_pagado
FROM payment
GROUP BY customer_id
HAVING COUNT(payment_id) > 5;

-- Calcule el número de películas (puede haber mas de 1 película por cada titulo) según su clasificación (rating)
SELECT rating, COUNT(*) AS cantidad_peliculas
FROM film
GROUP BY rating;

-- Liste los clientes que han realizado pagos con un monto promedio mayor a $5
SELECT customer_id, AVG(amount) AS promedio_pago
FROM payment
GROUP BY customer_id
HAVING promedio_pago > 5;

-- Calcule la cantidad de títulos de películas en cada duración de renta (rental_duration) mayor a 5 días
SELECT rental_duration, COUNT(title) AS cantidad_titulos
FROM film
WHERE rental_duration > 5
GROUP BY rental_duration;

-- Liste el total de pagos recibidos por cada mes, pero solo los meses con más de 100 pagos
SELECT MONTH(payment_date) AS mes, SUM(amount) AS total_pagado, COUNT(*) AS cantidad_pagos
FROM payment
GROUP BY mes
HAVING cantidad_pagos > 100;

-- Liste las clasificaciones de películas (rating) que tienen más de 50 películas registradas
SELECT rating, COUNT(*) AS cantidad_peliculas
FROM film
GROUP BY rating
HAVING cantidad_peliculas > 50;
