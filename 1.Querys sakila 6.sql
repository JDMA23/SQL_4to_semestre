USE sakila;
/* Obtener la fecha más antigua de alquiler */
SELECT MIN(rental_date) AS fecha_mas_antigua FROM rental;

/* Obtener el ID de actor más bajo */
SELECT MIN(actor_id) AS actor_id_minimo FROM actor;

/* Obtener la duración mínima de una película */
SELECT MIN(length) AS duracion_minima FROM film;

/* Obtener la fecha más reciente de alquiler */
SELECT MAX(rental_date) AS fecha_mas_reciente FROM rental;

/* Obtener el ID de actor más alto */
SELECT MAX(actor_id) AS actor_id_maximo FROM actor;

/* Obtener la duración máxima de una película */
SELECT MAX(length) AS duracion_maxima FROM film;

/* Contar el número total de actores */
SELECT COUNT(*) AS total_actores FROM actor;

/* Contar cuántas películas tienen clasificación PG */
SELECT COUNT(*) AS peliculas_pg FROM film WHERE rating = 'PG';

/* Contar cuántos clientes hay en la tienda 1 */
SELECT COUNT(*) AS clientes_tienda_1 FROM customer WHERE store_id = 1;

/* Sumar todos los pagos registrados */
SELECT SUM(amount) AS total_pagos FROM payment;

/* Sumar la duración total de todas las películas */
SELECT SUM(length) AS duracion_total FROM film;

/* Sumar todos los pagos de un cliente específico (ID 5) */
SELECT SUM(amount) AS total_pago_cliente_5 FROM payment WHERE customer_id = 5;

/* Calcular el promedio de duración de las películas */
SELECT AVG(length) AS promedio_duracion FROM film;

/* Calcular el promedio de los pagos realizados */
SELECT AVG(amount) AS promedio_pago FROM payment;

/* Calcular el promedio de duración de alquiler de las películas */
SELECT AVG(rental_duration) AS promedio_dias_alquiler FROM film;

/* Mostrar nombres de actores con alias de nombre y apellido */
SELECT first_name AS nombre, last_name AS apellido FROM actor;

/* Mostrar la cantidad total de películas con un alias */
SELECT COUNT(*) AS total_peliculas FROM film;

/* Calcular el pago total por cliente con un alias */
SELECT customer_id AS cliente, SUM(amount) AS total_pagado
FROM payment
GROUP BY customer_id;

/* Concatenar el nombre y apellido de los actores */
SELECT CONCAT(first_name, ' ', last_name) AS nombre_completo FROM actor;

/* Concatenar el título de la película con su clasificación */
SELECT CONCAT(title, ' - ', rating) AS titulo_y_clasificacion FROM film;

/* Concatenar el nombre completo del cliente con su ID */
SELECT CONCAT(first_name, ' ', last_name, ' (ID:', customer_id, ')') AS cliente_completo FROM customer;

/* Convertir todos los nombres de actores a mayúsculas */
SELECT UPPER(first_name) AS nombre_mayusculas FROM actor;

/* Convertir los nombres de las películas a mayúsculas */
SELECT UPPER(title) AS titulo_mayusculas FROM film;

/* Convertir el nombre del país a mayúsculas */
SELECT UPPER(country) AS pais_mayusculas FROM country;

/* Convertir todos los nombres de actores a minúsculas */
SELECT LOWER(first_name) AS nombre_minusculas FROM actor;

/* Convertir los nombres de las películas a minúsculas */
SELECT LOWER(title) AS titulo_minusculas FROM film;

/* Convertir el nombre del país a minúsculas */
SELECT LOWER(country) AS pais_minusculas FROM country;

/* Obtener 5 películas saltando las primeras 10 en orden alfabético */
SELECT title FROM film ORDER BY title ASC LIMIT 5 OFFSET 10;

/* Obtener 5 clientes saltando los primeros 15 en orden por apellido */
SELECT first_name, last_name FROM customer ORDER BY last_name ASC LIMIT 5 OFFSET 15;
