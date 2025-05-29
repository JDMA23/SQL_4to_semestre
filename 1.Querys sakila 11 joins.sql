-- 1. Muestra los títulos de todas las películas junto con el nombre de la categoría a la que pertenecen
SELECT film.title, category.name AS categoria
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id;

-- 2. Lista todas las películas con el idioma en que están habladas. Si alguna película no tiene idioma, muestra "NULL"
SELECT film.title, language.name AS idioma
FROM film
LEFT JOIN language ON film.language_id = language.language_id;

-- 3. Muestra todas las categorías, y si tienen películas, el número de películas en esa categoría. Si no tienen, muestra 0
SELECT category.name AS categoria, COUNT(film_category.film_id) AS cantidad_peliculas
FROM category
LEFT JOIN film_category ON category.category_id = film_category.category_id
GROUP BY category.name;

-- 4. Lista todos los clientes y cuánto dinero han pagado en total. Si no han hecho pagos, muestra 0
SELECT customer.first_name, customer.last_name, COALESCE(SUM(payment.amount), 0) AS total_pagado
FROM customer
LEFT JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id;

-- 5. Muestra todas las direcciones y, si hay una tienda en esa dirección, muestra su ID
SELECT address.address, store.store_id
FROM address
LEFT JOIN store ON address.address_id = store.address_id;

-- 6. Muestra la fecha de renta y el título de la película que fue rentada
SELECT rental.rental_date, film.title
FROM rental
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film ON inventory.film_id = film.film_id;

-- 7. Lista todos los empleados y la tienda en la que trabajan. Si algún empleado no tiene tienda asignada, muestra NULL
SELECT staff.first_name, staff.last_name, store.store_id
FROM staff
LEFT JOIN store ON staff.store_id = store.store_id;

-- 8. Muestra todas las ciudades y la cantidad de clientes que viven en ellas. Si no hay clientes, muestra 0
SELECT city.city, COUNT(customer.customer_id) AS cantidad_clientes
FROM city
LEFT JOIN address ON city.city_id = address.city_id
LEFT JOIN customer ON address.address_id = customer.address_id
GROUP BY city.city;

-- 9. Lista los clientes junto con las películas que han rentado
SELECT customer.first_name, customer.last_name, film.title
FROM customer
JOIN rental ON customer.customer_id = rental.customer_id
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film ON inventory.film_id = film.film_id;

-- 10. Muestra todas las películas y cuántas veces han sido rentadas. Incluye las que nunca se han rentado
SELECT film.title, COUNT(rental.rental_id) AS veces_rentada
FROM film
LEFT JOIN inventory ON film.film_id = inventory.film_id
LEFT JOIN rental ON inventory.inventory_id = rental.inventory_id
GROUP BY film.title;

-- 11. Muestra todos los actores junto con la cantidad de películas en las que han actuado. Si un actor no ha actuado en ninguna película, mostrar 0
SELECT actor.first_name, actor.last_name, COUNT(film_actor.film_id) AS cantidad_peliculas
FROM actor
LEFT JOIN film_actor ON actor.actor_id = film_actor.actor_id
GROUP BY actor.actor_id;

-- 12. Muestra todas las tiendas, incluso si no tienen empleados asignados, junto con la cantidad de empleados que trabajan en cada una
SELECT store.store_id, COUNT(staff.staff_id) AS cantidad_empleados
FROM store
LEFT JOIN staff ON store.store_id = staff.store_id
GROUP BY store.store_id;
