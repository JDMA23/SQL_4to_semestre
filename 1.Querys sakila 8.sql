USE sakila;

/* 1. Calcule el monto de las rentas de cada empleado durante el mes de mayo */
SELECT staff_id, SUM(amount) AS total_mayo
FROM payment
WHERE MONTH(payment_date) = 5
GROUP BY staff_id;

/* 2. Calcule el promedio de los pagos por cada mes */
SELECT MONTH(payment_date) AS mes, AVG(amount) AS promedio
FROM payment
GROUP BY mes;

/* 3. Calcule el promedio de los pagos de cada cliente */
SELECT customer_id, AVG(amount) AS promedio_pago
FROM payment
GROUP BY customer_id;

/* 4. Calcule el promedio de los pagos de cada día de la semana */
SELECT DAYNAME(payment_date) AS dia, AVG(amount) AS promedio
FROM payment
GROUP BY dia;

/* 5. Calcule cuántas rentas tiene cada cliente */
SELECT customer_id, COUNT(*) AS cantidad_rentas
FROM rental
GROUP BY customer_id;

/* 6. Calcule cuántas rentas tiene cada empleado */
SELECT staff_id, COUNT(*) AS cantidad_rentas
FROM rental
GROUP BY staff_id;

/* 7. Calcule cuántos clientes tiene cada tienda */
SELECT store_id, COUNT(*) AS cantidad_clientes
FROM customer
GROUP BY store_id;

/* 8. Calcule cuántas películas tiene cada categoría de rating */
SELECT rating, COUNT(*) AS cantidad_peliculas
FROM film
GROUP BY rating;

/* 9. Calcule cuántas ciudades están registradas por país */
SELECT country_id, COUNT(*) AS cantidad_ciudades
FROM city
GROUP BY country_id;

/* 10. Calcule cuántas películas hay en cada tienda */
SELECT store_id, COUNT(*) AS cantidad_peliculas
FROM inventory
GROUP BY store_id;

/* 11. Calcule el monto total de pagos de cada cliente */
SELECT customer_id, SUM(amount) AS total_pagado
FROM payment
GROUP BY customer_id;

/* 12. Liste los empleados que han generado pagos con un monto total mayor a $100 */
SELECT staff_id, SUM(amount) AS total
FROM payment
GROUP BY staff_id
HAVING total > 100;

/* 13. Calcule el número de pagos realizados por cada cliente en el mes de junio */
SELECT customer_id, COUNT(*) AS cantidad_pagos
FROM payment
WHERE MONTH(payment_date) = 6
GROUP BY customer_id;

/* 14. Calcule la cantidad de películas por cada duración de renta (rental_duration) */
SELECT rental_duration, COUNT(*) AS cantidad
FROM film
GROUP BY rental_duration;

/* 15. Calcule la cantidad total de pagos recibidos cada año */
SELECT YEAR(payment_date) AS año, COUNT(*) AS total_pagos
FROM payment
GROUP BY año;

/* 16. Calcule el monto total de pagos por cada día de la semana */
SELECT DAYNAME(payment_date) AS dia, SUM(amount) AS total
FROM payment
GROUP BY dia;

/* 17. Liste los días donde el total de pagos fue mayor a $500 */
SELECT DATE(payment_date) AS dia, SUM(amount) AS total
FROM payment
GROUP BY dia
HAVING total > 500;

/* 18. Calcule cuántas películas hay en cada duración (length) específica */
SELECT length, COUNT(*) AS cantidad
FROM film
GROUP BY length;

/* 20. Calcule el monto total de pagos por cada cliente, pero solo para aquellos que han realizado más de 5 pagos */
SELECT customer_id, SUM(amount) AS total
FROM payment
GROUP BY customer_id
HAVING COUNT(*) > 5;

/* 21. Calcule el número de películas según su clasificación (rating) */
SELECT rating, COUNT(*) AS cantidad
FROM film
GROUP BY rating;

/* 22. Liste los clientes que han realizado pagos con un monto promedio mayor a $5 */
SELECT customer_id, AVG(amount) AS promedio
FROM payment
GROUP BY customer_id
HAVING promedio > 5;

/* 23. Calcule la cantidad de películas en cada duración de renta (rental_duration) mayor a 5 días */
SELECT rental_duration, COUNT(*) AS cantidad
FROM film
WHERE rental_duration > 5
GROUP BY rental_duration;

/* 24. Calcule el total de pagos recibidos por cada mes, pero solo los meses con más de 100 pagos */
SELECT MONTH(payment_date) AS mes, SUM(amount) AS total, COUNT(*) AS cantidad_pagos
FROM payment
GROUP BY mes
HAVING cantidad_pagos > 100;

/* 25. Liste las clasificaciones de películas (rating) que tienen más de 200 películas registradas */
SELECT rating, COUNT(*) AS cantidad
FROM film
GROUP BY rating
HAVING cantidad > 200;
