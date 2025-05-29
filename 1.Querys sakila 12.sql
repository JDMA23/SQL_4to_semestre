USE sakila;
-- 1. Títulos con misma duración que 'ALIEN CENTER'
SELECT title FROM film WHERE length = (SELECT length FROM film WHERE title = 'ALIEN CENTER');

-- 2. Clientes con al menos un pago mayor a 5 dólares
SELECT first_name, last_name FROM customer 
WHERE customer_id IN (SELECT customer_id FROM payment WHERE amount > 5);

-- 3. Títulos con mismo precio de renta que 'ZOOLANDER FICTION'
SELECT title FROM film 
WHERE rental_rate = (SELECT rental_rate FROM film WHERE title = 'ZOOLANDER FICTION');

-- 4. Actores en la película 'GHOSTBUSTERS ELF'
SELECT first_name, last_name FROM actor 
WHERE actor_id IN (SELECT actor_id FROM film_actor WHERE film_id = (SELECT film_id FROM film WHERE title = 'GHOSTBUSTERS ELF'));

-- 5. Películas con duración mayor al promedio
SELECT title FROM film WHERE length > (SELECT AVG(length) FROM film);

-- 6. Clientes que han realizado al menos un pago
SELECT first_name, last_name FROM customer WHERE customer_id IN (SELECT DISTINCT customer_id FROM payment);

-- 7. Películas que nunca han sido rentadas
SELECT title FROM film WHERE film_id NOT IN (SELECT DISTINCT film_id FROM inventory NATURAL JOIN rental);

-- 8. Categorías con más de 50 películas
SELECT name FROM category 
WHERE category_id IN (SELECT category_id FROM film_category GROUP BY category_id HAVING COUNT(film_id) > 50);

-- 9. Empleados que trabajan en la tienda con más películas en inventario
SELECT first_name, last_name FROM staff 
WHERE store_id = (SELECT store_id FROM inventory GROUP BY store_id ORDER BY COUNT(*) DESC LIMIT 1);

-- 10. Películas con el mismo rating que 'ACADEMY DINOSAUR'
SELECT title FROM film WHERE rating = (SELECT rating FROM film WHERE title = 'ACADEMY DINOSAUR');

-- 11. Actores que han participado en más de 20 películas
SELECT first_name, last_name FROM actor 
WHERE actor_id IN (SELECT actor_id FROM film_actor GROUP BY actor_id HAVING COUNT(film_id) > 20);

-- 12. Películas con mismo costo de reposición que 'CRUSADE HONEY'
SELECT title FROM film WHERE replacement_cost = (SELECT replacement_cost FROM film WHERE title = 'CRUSADE HONEY');
