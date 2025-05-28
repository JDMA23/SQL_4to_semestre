USE sakila;

/* Liste los registros de la tabla de actor que tienen first_name = 'PENELOPE' */
SELECT * FROM actor WHERE first_name = 'PENELOPE';

/* Liste los registros de la tabla de actor que tienen last_name = 'DAVIS' */
SELECT * FROM actor WHERE last_name = 'DAVIS';

/* Liste todos los registros y campos de la tabla country con country_id = 10 */
SELECT * FROM country WHERE country_id = 10;

/* Liste todos los registros y campos de la tabla category con category_id = 15 */
SELECT * FROM category WHERE category_id = 15;

/* Liste todos los registros y campos de la tabla language con language_id = 5 */
SELECT * FROM language WHERE language_id = 5;

/* Liste los registros de la tabla de actor que tienen letra 'A' en el first_name */
SELECT * FROM actor WHERE first_name LIKE '%A%';

/* Liste los registros de la tabla de actor donde el first_name comienza con letra 'A' */
SELECT * FROM actor WHERE first_name LIKE 'A%';

/* Liste los registros de la tabla de actor donde el first_name termina con letra 'A' */
SELECT * FROM actor WHERE first_name LIKE '%A';

/* Liste los registros de la tabla category donde el category_id es 1, 3 o 5 */
SELECT * FROM category WHERE category_id IN (1, 3, 5);

/* Liste los registros de la tabla de actor que tienen last_name = 'DAVIS', 'JONES' O 'SMITH' */
SELECT * FROM actor WHERE last_name IN ('DAVIS', 'JONES', 'SMITH');

/* Liste todos los registros y campos de la tabla country con country_id = 1 o 5 o 7 o 11 o 13 */
SELECT * FROM country WHERE country_id IN (1, 5, 7, 11, 13);

/* Liste todos los registros y campos de la tabla category con category_id > 5 */
SELECT * FROM category WHERE category_id > 5;

/* Liste todos los registros y campos de la tabla language con language_id mayor a 5 y menor a 10 */
SELECT * FROM language WHERE language_id > 5 AND language_id < 10;

/* Liste todos los registros de la tabla actor donde el first_name comienza con la letra 'J' */
SELECT * FROM actor WHERE first_name LIKE 'J%';

/* Liste todos los registros de la tabla film donde el título contiene la palabra 'LOVE' */
SELECT * FROM film WHERE title LIKE '%LOVE%';

/* Liste todos los actores cuyo actor_id está entre 20 y 30 */
SELECT * FROM actor WHERE actor_id BETWEEN 20 AND 30;

/* Muestre todas las películas cuyo rental_rate está entre 2.99 y 4.99 */
SELECT * FROM film WHERE rental_rate BETWEEN 2.99 AND 4.99;

/* Liste los registros de la tabla customer donde el store_id sea 1 o 2 */
SELECT * FROM customer WHERE store_id IN (1, 2);

/* Muestre los registros de la tabla film donde el rating sea 'G', 'PG' o 'PG-13' */
SELECT * FROM film WHERE rating IN ('G', 'PG', 'PG-13');
