USE sakila;

-- 1. Identificadores, títulos y descripciones de las películas en el catálogo
SELECT DISTINCT f.film_id, f.title, f.description FROM film f
INNER JOIN inventory i ON f.film_id = i.film_id;

-- 2. Identificadores, títulos de las películas en el catálogo y nombres completos de los actores
SELECT f.film_id,f.title, CONCAT(a.first_name, ' ', a.last_name) AS actor_name FROM film f
INNER JOIN inventory i ON f.film_id = i.film_id
INNER JOIN film_actor fa ON f.film_id = fa.film_id
INNER JOIN actor a ON fa.actor_id = a.actor_id;

-- 3. Nombres completos de los actores y títulos de las películas en que participan en el catálogo
SELECT CONCAT(a.first_name, ' ', a.last_name) AS actor_name,f.title
FROM actor a
INNER JOIN film_actor fa ON a.actor_id = fa.actor_id
INNER JOIN film f ON fa.film_id = f.film_id
INNER JOIN inventory i ON f.film_id = i.film_id;

-- 4. Nombres de los clientes y títulos de las películas que ha rentado
SELECT CONCAT(c.first_name, ' ', c.last_name) AS customer_name,f.title
FROM customer c
INNER JOIN rental r ON c.customer_id = r.customer_id
INNER JOIN inventory i ON r.inventory_id = i.inventory_id
INNER JOIN film f ON i.film_id = f.film_id;

-- 5. Cuántos clientes tiene cada miembro del staff
SELECT CONCAT(s.first_name, ' ', s.last_name) AS staff_name,COUNT(DISTINCT c.customer_id) AS total_customers
FROM staff s
INNER JOIN store st ON s.store_id = st.store_id
INNER JOIN customer c ON st.store_id = c.store_id
GROUP BY s.staff_id;

-- 6. Suma de pagos registrados agrupados por tienda y dirección de la tienda
SELECT st.store_id,a.address,SUM(p.amount) AS total_payments
FROM payment p
INNER JOIN staff s ON p.staff_id = s.staff_id
INNER JOIN store st ON s.store_id = st.store_id
INNER JOIN address a ON st.address_id = a.address_id
GROUP BY st.store_id, a.address;
