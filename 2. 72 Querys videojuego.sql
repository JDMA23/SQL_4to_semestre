USE videojuego;

-- 1. DISTINCT
SELECT DISTINCT nivel FROM jugador;
SELECT DISTINCT nombre_mision FROM misiones;
SELECT DISTINCT recompensa FROM misiones;

-- 2. LIMIT
SELECT * FROM jugador ORDER BY fecha_registro LIMIT 3;
SELECT * FROM item ORDER BY precio DESC LIMIT 3;
SELECT * FROM resultado ORDER BY puntuacion DESC LIMIT 3;

-- 3. ORDER BY
SELECT * FROM jugador ORDER BY nivel DESC;
SELECT * FROM item ORDER BY precio ASC;
SELECT * FROM resultado ORDER BY posicion ASC;

-- 4. Operadores de comparación
SELECT * FROM jugador WHERE nivel > 10;
SELECT * FROM item WHERE precio <= 500;
SELECT * FROM resultado WHERE puntuacion = 1000;

-- 5. LIKE
SELECT * FROM jugador WHERE nombre LIKE 'A%';
SELECT * FROM misiones WHERE nombre_mision LIKE '%batalla%';
SELECT * FROM jugador WHERE email LIKE '%@gmail.com';

-- 6. BETWEEN
SELECT * FROM jugador WHERE nivel BETWEEN 5 AND 15;
SELECT * FROM item WHERE precio BETWEEN 200 AND 1000;
SELECT * FROM resultado WHERE puntuacion BETWEEN 500 AND 1500;

-- 7. AND
SELECT * FROM jugador WHERE nivel > 5 AND fecha_registro > '2024-01-01';
SELECT * FROM item WHERE precio > 500 AND id_jugador IN (1, 2, 3);
SELECT * FROM resultado WHERE puntuacion > 1000 AND posicion < 3;

-- 8. OR
SELECT * FROM jugador WHERE nivel > 10 OR fecha_registro < '2024-01-01';
SELECT * FROM item WHERE precio > 2000 OR id_jugador = 5;
SELECT * FROM resultado WHERE puntuacion > 2000 OR posicion = 1;

-- 9. NOT
SELECT * FROM jugador WHERE NOT nivel = 5;
SELECT * FROM item WHERE NOT precio = 500;
SELECT * FROM resultado WHERE NOT puntuacion = 1000;

-- 10. IN
SELECT * FROM jugador WHERE nivel IN (5, 10, 15);
SELECT * FROM misiones WHERE recompensa IN ('Oro', 'Plata', 'Diamante');
SELECT * FROM resultado WHERE id_jugador IN (3, 7, 10);

-- 11. Operaciones matemáticas
SELECT nombre, nivel + 2 AS nuevo_nivel FROM jugador;
SELECT nombre_producto, precio * 0.90 AS precio_descuento FROM item;
SELECT id_jugador, puntuacion + 500 AS nueva_puntuacion FROM resultado;

-- 12. MIN
SELECT MIN(nivel) FROM jugador;
SELECT MIN(precio) FROM item;
SELECT MIN(puntuacion) FROM resultado;

-- 13. MAX
SELECT MAX(nivel) FROM jugador;
SELECT MAX(precio) FROM item;
SELECT MAX(puntuacion) FROM resultado;

-- 14. COUNT
SELECT COUNT(*) FROM jugador;
SELECT COUNT(*) FROM item;
SELECT COUNT(*) FROM resultado;

-- 15. SUM
SELECT SUM(nivel) FROM jugador;
SELECT SUM(precio) FROM item;
SELECT SUM(puntuacion) FROM resultado;

-- 16. AVG
SELECT AVG(nivel) FROM jugador;
SELECT AVG(precio) FROM item;
SELECT AVG(puntuacion) FROM resultado;

-- 17. CONCAT
SELECT CONCAT(nombre, ' - Nivel: ', nivel) AS jugador_info FROM jugador;
SELECT CONCAT(nombre_mision, ' (Recompensa: ', recompensa, ')') AS detalle_mision FROM misiones;
SELECT CONCAT(id_jugador, ' - ', email) AS identificacion FROM jugador;

-- 18. UPPER
SELECT UPPER(nombre) AS nombre_mayusculas FROM jugador;
SELECT UPPER(nombre_mision) AS mision_mayusculas FROM misiones;
SELECT UPPER(email) AS email_mayusculas FROM jugador;

-- 19. LOWER
SELECT LOWER(nombre) AS nombre_minusculas FROM jugador;
SELECT LOWER(nombre_mision) AS mision_minusculas FROM misiones;
SELECT LOWER(email) AS email_minusculas FROM jugador;

-- 20. OFFSET
SELECT * FROM jugador ORDER BY id_jugador LIMIT 5 OFFSET 3;
SELECT * FROM item ORDER BY id_producto LIMIT 5 OFFSET 2;
SELECT * FROM resultado ORDER BY id_resultado LIMIT 5 OFFSET 5;

-- 21. GROUP BY
SELECT nivel, COUNT(*) AS cantidad_jugadores FROM jugador GROUP BY nivel;
SELECT id_jugador, COUNT(*) AS total_items FROM item GROUP BY id_jugador;
SELECT puntuacion, COUNT(*) AS veces_lograda FROM resultado GROUP BY puntuacion;

-- 22. HAVING
SELECT nivel, COUNT(*) AS cantidad_jugadores FROM jugador GROUP BY nivel HAVING COUNT(*) > 3;
SELECT id_jugador, COUNT(*) AS total_items FROM item GROUP BY id_jugador HAVING COUNT(*) > 2;
SELECT puntuacion, COUNT(*) AS veces_lograda FROM resultado GROUP BY puntuacion HAVING COUNT(*) > 5;

-- 23. CASE
SELECT nombre, nivel,
    CASE
        WHEN nivel < 5 THEN 'Principiante'
        WHEN nivel BETWEEN 5 AND 10 THEN 'Intermedio'
        ELSE 'Experto'
    END AS categoria
FROM jugador;

SELECT id_jugador, posicion,
    CASE
        WHEN posicion = 1 THEN 'Ganador'
        WHEN posicion = 2 THEN 'Segundo lugar'
        ELSE 'Participante'
    END AS resultado
FROM resultado;

SELECT nombre_producto, precio,
    CASE
        WHEN precio > 1000 THEN 'Descuento del 20%'
        WHEN precio BETWEEN 500 AND 1000 THEN 'Descuento del 10%'
        ELSE 'Sin descuento'
    END AS tipo_descuento
FROM item;

-- 24. IFNULL
SELECT nombre, IFNULL(email, 'Sin correo') AS email FROM jugador;
SELECT nombre_mision, IFNULL(descripcion, 'Sin descripción') AS detalle FROM misiones;
SELECT nombre, IFNULL(nivel, 0) AS nivel_corregido FROM jugador;

