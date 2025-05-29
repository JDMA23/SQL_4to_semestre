USE liga_futbol;

-- DISTINCT
SELECT DISTINCT categoria FROM equipo;
SELECT DISTINCT especialidad FROM arbitro;

-- LIMIT
SELECT * FROM jugador LIMIT 5;
SELECT * FROM partido LIMIT 3;
SELECT * FROM equipo LIMIT 10;

-- ORDER BY
SELECT * FROM jugador ORDER BY nombre_jugador ASC;
SELECT * FROM partido ORDER BY goles_equipo1 DESC;
SELECT * FROM equipo ORDER BY categoria ASC, nombre_equipo DESC;

-- Operadores de comparación
SELECT * FROM jugador WHERE numero_jugador > 10;
SELECT * FROM partido WHERE goles_equipo1 = goles_equipo2;
SELECT * FROM tabla_posiciones WHERE puntos <= 15;
SELECT * FROM tabla_posiciones WHERE puntos >= 15;
SELECT * FROM partido WHERE goles_equipo1 < 2;

-- LIKE
SELECT * FROM jugador WHERE nombre_jugador LIKE 'J%';
SELECT * FROM equipo WHERE nombre_equipo LIKE '%FC%';
SELECT * FROM arbitro WHERE nombre LIKE '%ez';

-- BETWEEN
SELECT * FROM jugador WHERE numero_jugador BETWEEN 5 AND 15;
SELECT * FROM partido WHERE (goles_equipo1 + goles_equipo2) BETWEEN 2 AND 6;
SELECT * FROM tabla_posiciones WHERE puntos BETWEEN 10 AND 20;

-- AND
SELECT * FROM partido WHERE goles_equipo1 > 2 AND goles_equipo2 > 2;
SELECT * FROM tabla_posiciones WHERE categoria = 'Infantil' AND puntos > 15;

-- OR
SELECT * FROM equipo WHERE categoria = 'Infantil' OR categoria = 'Juvenil';
SELECT * FROM arbitro WHERE especialidad = 'VAR' OR especialidad = 'Principal';

-- NOT
SELECT * FROM partido WHERE NOT goles_equipo1 = goles_equipo2;
SELECT * FROM equipo WHERE NOT categoria = 'Mayor';

-- IN
SELECT * FROM equipo WHERE categoria IN ('Infantil', 'Juvenil', 'Mayor');
SELECT * FROM arbitro WHERE especialidad IN ('VAR', 'Principal');

-- Operaciones matemáticas
SELECT categoria, numero_equipos * 2 AS "Doble de Equipos" FROM categorias;
SELECT id_partido, (goles_equipo1 - goles_equipo2) AS "Diferencia de goles" FROM partido;
SELECT equipo, (puntos / 30) * 100 AS "Porcentaje de Puntos" FROM tabla_posiciones;

-- MIN
SELECT MIN(goles_equipo1) AS min_goles FROM partido;
SELECT MIN(puntos) AS min_puntos FROM tabla_posiciones;
SELECT MIN(numero_jugador) AS min_jugador FROM jugador;

-- MAX
SELECT MAX(goles_equipo1) AS max_goles FROM partido;
SELECT MAX(puntos) AS max_puntos FROM tabla_posiciones;
SELECT MAX(numero_jugador) AS max_jugador FROM jugador;

-- COUNT
SELECT COUNT(*) AS total_partidos FROM partido;
SELECT COUNT(*) AS total_equipos FROM equipo;
SELECT COUNT(*) AS total_jugadores FROM jugador;

-- SUM
SELECT SUM(goles_equipo1 + goles_equipo2) AS total_goles FROM partido;
SELECT SUM(puntos) AS total_puntos FROM tabla_posiciones;
SELECT SUM(goles_favor) AS total_goles_favor FROM tabla_posiciones;

-- AVG
SELECT AVG(goles_equipo1 + goles_equipo2) AS promedio_goles FROM partido;
SELECT AVG(puntos) AS promedio_puntos FROM tabla_posiciones;
SELECT AVG(goles_favor) AS promedio_goles_favor FROM tabla_posiciones;

-- CONCAT
SELECT CONCAT(nombre_jugador, ' - ', posicion) AS jugador_info FROM jugador;
SELECT CONCAT(nombre_equipo, ' (', categoria, ')') AS equipo_info FROM equipo;
SELECT CONCAT(nombre, ' - ', especialidad) AS arbitro_info FROM arbitro;

-- UPPER
SELECT UPPER(nombre_jugador) AS nombre_mayus FROM jugador;
SELECT UPPER(nombre_equipo) AS equipo_mayus FROM equipo;
SELECT UPPER(categoria) AS categoria_mayus FROM categorias;

-- LOWER
SELECT LOWER(nombre_jugador) AS nombre_minus FROM jugador;
SELECT LOWER(nombre_equipo) AS equipo_minus FROM equipo;
SELECT LOWER(categoria) AS categoria_minus FROM categorias;

-- OFFSET
SELECT * FROM jugador LIMIT 10 OFFSET 5;
SELECT * FROM equipo LIMIT 10 OFFSET 3;
SELECT * FROM partido LIMIT 10 OFFSET 2;

-- GROUP BY
SELECT nombre_equipo, COUNT(*) AS total_jugadores FROM jugador GROUP BY nombre_equipo;
SELECT equipo, SUM(goles_favor) AS total_goles FROM tabla_posiciones GROUP BY equipo;
SELECT equipo1, COUNT(*) AS partidos_jugados FROM partido GROUP BY equipo1;

-- HAVING
SELECT nombre_equipo, COUNT(*) AS total_jugadores 
FROM jugador GROUP BY nombre_equipo HAVING COUNT(*) > 3;
SELECT equipo, SUM(goles_favor) AS total_goles 
FROM tabla_posiciones GROUP BY equipo HAVING SUM(goles_favor) > 10;
SELECT equipo, AVG(puntos) AS promedio_puntos 
FROM tabla_posiciones GROUP BY equipo HAVING AVG(puntos) > 15;

-- CASE
SELECT equipo, puntos, 
  CASE 
    WHEN puntos >= 25 THEN 'Alto'
    WHEN puntos >= 15 THEN 'Medio'
    ELSE 'Bajo'
  END AS categoria_puntos
FROM tabla_posiciones;

SELECT nombre_jugador, posicion, 
  CASE 
    WHEN posicion = 'Delantero' THEN 'Atacante'
    WHEN posicion = 'Mediocampista' THEN 'Medio'
    WHEN posicion = 'Defensa' THEN 'Defensivo'
    ELSE 'Otro'
  END AS rol
FROM jugador;

SELECT equipo1, equipo2, goles_equipo1, goles_equipo2,
  CASE 
    WHEN goles_equipo1 > goles_equipo2 THEN 'Ganó equipo 1'
    WHEN goles_equipo1 < goles_equipo2 THEN 'Ganó equipo 2'
    ELSE 'Empate'
  END AS resultado
FROM partido;

-- IFNULL
SELECT equipo, IFNULL(goles_favor, 0) AS goles_favor FROM tabla_posiciones;
SELECT nombre, IFNULL(telefono, 'No disponible') AS telefono FROM arbitro;
SELECT nombre_jugador, IFNULL(posicion, 'Sin asignar') AS posicion FROM jugador;
