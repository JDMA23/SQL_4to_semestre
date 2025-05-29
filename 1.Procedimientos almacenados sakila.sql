USE sakila;

DROP PROCEDURE IF EXISTS obtener_nombre_completo_cliente;
DELIMITER $$
CREATE PROCEDURE obtener_nombre_completo_cliente (
    IN id_cliente INT,
    OUT nombre_completo VARCHAR(100)
)
BEGIN
    SELECT CONCAT(first_name, ' ', last_name)
    INTO nombre_completo
    FROM customer
    WHERE customer_id = id_cliente;
END$$
DELIMITER ;
CALL obtener_nombre_completo_cliente(1, @nombre_completo);
SELECT @nombre_completo;


DROP PROCEDURE IF EXISTS obtener_cantidad_peliculas_categoria;
DELIMITER $$
CREATE PROCEDURE obtener_cantidad_peliculas_categoria (
    IN nombre_categoria VARCHAR(50),
    OUT cantidad_peliculas INT
)
BEGIN
    SELECT COUNT(*)
    INTO numero_peliculas
    FROM film f
    JOIN film_category fc ON f.film_id = fc.film_id
    JOIN category c ON fc.category_id = c.category_id
    WHERE c.name = nombre_categoria;
END$$
DELIMITER ;
CALL obtener_cantidad_peliculas_categoria('Action', @numero_peliculas);
SELECT @numero_peliculas;


DROP PROCEDURE IF EXISTS verificar_cliente_existe;
DELIMITER $$
CREATE PROCEDURE verificar_cliente_existe (
    IN id_cliente INT,
    OUT existe TINYINT
)
BEGIN
    SELECT COUNT(*) > 0
    INTO existe
    FROM customer
    WHERE customer_id = id_cliente;
END$$
DELIMITER ;
CALL verificar_cliente_existe(1, @existe);
SELECT @existe;


DROP PROCEDURE IF EXISTS peliculas_mayor_duracion;
DELIMITER $$
CREATE PROCEDURE peliculas_mayor_duracion (
    IN duracion_minima INT
)
BEGIN
    SELECT title, length
    FROM film
    WHERE length > duracion_minima;
END$$
DELIMITER ;
CALL peliculas_mayor_duracion(120);


DROP PROCEDURE IF EXISTS peliculas_rentadas_cliente;
DELIMITER $$
CREATE PROCEDURE peliculas_rentadas_cliente (
    IN id_cliente INT
)
BEGIN
    SELECT DISTINCT f.title
    FROM rental r
    JOIN inventory i ON r.inventory_id = i.inventory_id
    JOIN film f ON i.film_id = f.film_id
    WHERE r.customer_id = id_cliente;
END$$
DELIMITER ;
CALL peliculas_rentadas_cliente(1);


DROP PROCEDURE IF EXISTS total_dinero_tienda;
DELIMITER $$
CREATE PROCEDURE total_dinero_tienda (
    IN id_tienda INT,
    OUT total DECIMAL(10,2)
)
BEGIN
    SELECT SUM(p.amount)
    INTO total
    FROM payment p
    JOIN customer c ON p.customer_id = c.customer_id
    WHERE c.store_id = id_tienda;
END$$
DELIMITER ;
CALL total_dinero_tienda(1, @total);
SELECT @total;


DROP PROCEDURE IF EXISTS copias_disponibles_pelicula;
DELIMITER $$
CREATE PROCEDURE copias_disponibles_pelicula (
    IN id_pelicula INT,
    OUT cantidad_copias INT
)
BEGIN
    SELECT COUNT(*)
    INTO cantidad_copias
    FROM inventory
    WHERE film_id = id_pelicula;
END$$
DELIMITER ;
CALL copias_disponibles_pelicula(1, @cantidad_copias);
SELECT @cantidad_copias;


DROP PROCEDURE IF EXISTS actores_por_pelicula;
DELIMITER $$
CREATE PROCEDURE actores_por_pelicula (
    IN id_pelicula INT
)
BEGIN
    SELECT a.first_name, a.last_name
    FROM actor a
    JOIN film_actor fa ON a.actor_id = fa.actor_id
    WHERE fa.film_id = id_pelicula;
END$$
DELIMITER ;
CALL actores_por_pelicula(1);


DROP PROCEDURE IF EXISTS obtener_correo_cliente;
DELIMITER $$
CREATE PROCEDURE obtener_correo_cliente (
    IN id_cliente INT,
    OUT correo VARCHAR(50)
)
BEGIN
    SELECT email
    INTO correo
    FROM customer
    WHERE customer_id = id_cliente;
END$$
DELIMITER ;
CALL obtener_correo_cliente(1, @correo);
SELECT @correo;


DROP PROCEDURE IF EXISTS cantidad_clientes_ciudad;
DELIMITER $$
CREATE PROCEDURE cantidad_clientes_ciudad (
    IN nombre_ciudad VARCHAR(50),
    OUT cantidad INT
)
BEGIN
    SELECT COUNT(*)
    INTO cantidad
    FROM customer cu
    JOIN address a ON cu.address_id = a.address_id
    JOIN city c ON a.city_id = c.city_id
    WHERE c.city = nombre_ciudad;
END$$
DELIMITER ;
CALL cantidad_clientes_ciudad('Athenai', @cantidad);
SELECT @cantidad;


DROP PROCEDURE IF EXISTS peliculas_por_clasificacion;
DELIMITER $$
CREATE PROCEDURE peliculas_por_clasificacion (
    IN clasificacion VARCHAR(10)
)
BEGIN
    SELECT title, rating
    FROM film
    WHERE rating = clasificacion;
END$$
DELIMITER ;
CALL peliculas_por_clasificacion('PG');


DROP PROCEDURE IF EXISTS clientes_por_estado;
DELIMITER $$
CREATE PROCEDURE clientes_por_estado (
    IN estado TINYINT
)
BEGIN
    SELECT customer_id, first_name, last_name, active
    FROM customer
    WHERE active = estado;
END$$
DELIMITER ;
CALL clientes_por_estado(1); -- 1: activo, 0: inactivo


DROP PROCEDURE IF EXISTS peliculas_menor_duracion;
DELIMITER $$
CREATE PROCEDURE peliculas_menor_duracion (
    IN duracion_maxima INT
)
BEGIN
    SELECT title, length
    FROM film
    WHERE length < duracion_maxima;
END$$
DELIMITER ;
CALL peliculas_menor_duracion(80);


DROP PROCEDURE IF EXISTS clientes_registrados_despues;
DELIMITER $$
CREATE PROCEDURE clientes_registrados_despues (
    IN fecha DATE
)
BEGIN
    SELECT customer_id, first_name, last_name, create_date
    FROM customer
    WHERE create_date > fecha;
END$$
DELIMITER ;
CALL clientes_registrados_despues('2006-02-01');


DROP PROCEDURE IF EXISTS peliculas_disponibles_tienda;
DELIMITER $$
CREATE PROCEDURE peliculas_disponibles_tienda (
    IN id_tienda INT
)
BEGIN
    SELECT DISTINCT f.title
    FROM film f
    JOIN inventory i ON f.film_id = i.film_id
    WHERE i.store_id = id_tienda;
END$$
DELIMITER ;
CALL peliculas_disponibles_tienda(1);
