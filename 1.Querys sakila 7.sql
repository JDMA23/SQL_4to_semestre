USE sakila;

/* Calcule el monto de las rentas de cada empleado durante el mes de mayo */
SELECT staff_id, SUM(amount) AS total_rentas_mayo
FROM payment
WHERE MONTH(payment_date) = 5
GROUP BY staff_id;

/* Calcule el promedio de los pagos por cada mes */
SELECT MONTH(payment_date) AS mes, AVG(amount) AS promedio_pago
FROM payment
GROUP BY mes;

/* Calcule el promedio de los pagos de cada cliente */
SELECT customer_id, AVG(amount) AS promedio_pago_cliente
FROM payment
GROUP BY customer_id;

/* Calcule el promedio de los pagos de cada día de la semana */
SELECT DAYOFWEEK(payment_date) AS dia_semana, AVG(amount) AS promedio_pago_dia
FROM payment
GROUP BY dia_semana;

/* Calcule cuántas rentas tiene cada cliente */
SELECT customer_id, COUNT(*) AS total_rentas
FROM rental
GROUP BY customer_id;

/* Calcule cuántas rentas tiene cada empleado */
SELECT staff_id, COUNT(*) AS total_rentas
FROM rental
GROUP BY staff_id;

/* Calcule cuántos clientes tiene cada tienda */
SELECT store_id, COUNT(*) AS total_clientes
FROM customer
GROUP BY store_id;

/* Calcule cuántas películas tiene cada categoría de rating */
SELECT rating, COUNT(*) AS total_peliculas
FROM film
GROUP BY rating;

/* Calcule cuántas ciudades están registradas por país */
SELECT country_id, COUNT(*) AS total_ciudades
FROM city
GROUP BY country_id;

/* Calcule cuántas películas hay en cada tienda */
/* Nota: La tabla inventory relaciona películas y tiendas */
SELECT store_id, COUNT(DISTINCT film_id) AS total_peliculas
FROM inventory
GROUP BY store_id;

/* Calcule el monto total de pagos de cada cliente */
SELECT customer_id, SUM(amount) AS total_pagos
FROM payment
GROUP BY customer_id;

/* Liste los empleados que han generado pagos con un monto total mayor a $100 */
SELECT staff_id, SUM(amount) AS total_pagos
FROM payment
GROUP BY staff_id
HAVING total_pagos > 100;

/* Calcule el número de pagos realizados por cada cliente en el mes de junio */
SELECT customer_id, COUNT(*) AS pagos_junio
FROM payment
WHERE MONTH(payment_date) = 6
GROUP BY customer_id;

/* Calcule la cantidad de películas por cada duración de renta (rental_duration) */
SELECT rental_duration, COUNT(*) AS total_peliculas
FROM film
GROUP BY rental_duration;

/* Calcule la cantidad total de pagos recibidos cada año */
SELECT YEAR(payment_date) AS anio, SUM(amount) AS total_pagos
FROM payment
GROUP BY anio;

/* Calcule el monto total de pagos por cada día de la semana */
SELECT DAYOFWEEK(payment_date) AS dia_semana, SUM(amount) AS total_pagos
FROM payment
GROUP BY dia_semana;

/* Liste los días donde el total de pagos fue mayor a $500 */
SELECT payment_date, SUM(amount) AS total_pagos
FROM payment
GROUP BY payment_date
HAVING total_pagos > 500;

/* Calcule cuántas películas hay en cada duración (length) específica */
SELECT length, COUNT(*) AS total_peliculas
FROM film
GROUP BY length;

/* Calcule la cantidad de pagos realizados en cada tienda */
SELECT store_id, COUNT(*) AS total_pagos
FROM payment
GROUP BY store_id;

/* Calcule el monto total de pagos por cada cliente, pero solo para aquellos que han realizado más de 5 pagos */
SELECT customer_id, SUM(amount) AS total_pagos
FROM payment
GROUP BY customer_id
HAVING COUNT(*) > 5;

/* Calcule el número de películas según su clasificación (rating) */
SELECT rating, COUNT(*) AS total_peliculas
FROM film
GROUP BY rating;

/* Liste los clientes que han realizado pagos con un monto promedio mayor a $5 */
SELECT customer_id, AVG(amount) AS promedio_pago
FROM payment
GROUP BY customer_id
HAVING promedio_pago > 5;

/* Calcule la cantidad de películas en cada duración de renta (rental_duration) mayor a 5 días */
SELECT rental_duration, COUNT(*) AS total_peliculas
FROM film
WHERE rental_duration > 5
GROUP BY rental_duration;

/* Calcule el total de pagos recibidos por cada mes, pero solo los meses con más de 100 pagos */
SELECT YEAR(payment_date) AS anio, MONTH(payment_date) AS mes, SUM(amount) AS total_pagos, COUNT(*) AS total_pagos_mes
FROM payment
GROUP BY anio, mes
HAVING total_pagos_mes > 100;

/* Liste las clasificaciones de películas (rating) que tienen más de 200 películas registradas */
SELECT rating, COUNT(*) AS total_peliculas
FROM film
GROUP BY rating
HAVING total_peliculas > 200;
