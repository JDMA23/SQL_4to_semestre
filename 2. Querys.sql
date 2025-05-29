USE escuela;
-- 1. Subconsulta para obtener los estudiantes con la calificación más alta en cualquier materia
SELECT * FROM estudiantes WHERE calificacion = (SELECT MAX(calificacion) FROM estudiantes);

-- 2. Obtener los estudiantes que participaron en más de 3 eventos
SELECT * FROM estudiantes WHERE eventos_participados > 3;

-- 3. Obtener los estudiantes que no han participado en ningún evento
SELECT * FROM estudiantes WHERE eventos_participados = 0;

-- 4. Obtener el nombre de los estudiantes que participaron en el evento 2
SELECT nombre FROM estudiantes WHERE id IN (SELECT estudiante_id FROM eventos WHERE id = 2);

-- 5. Obtener los alumnos con las calificaciones más altas al promedio
SELECT * FROM estudiantes WHERE calificacion > (SELECT AVG(calificacion) FROM estudiantes);

USE liga_futbol;
-- 1. Obtener jugadores con más goles que el promedio general de goles
SELECT * FROM jugadores WHERE goles > (SELECT AVG(goles) FROM jugadores);

-- 2. Mostrar nombre y partidos de los jugadores con más partidos que el primer jugador registrado
SELECT nombre, partidos FROM jugadores WHERE partidos > (SELECT partidos FROM jugadores ORDER BY id LIMIT 1);

-- 3. Mostrar los jugadores que han jugado igual cantidad de partidos que el jugador con más goles
SELECT * FROM jugadores WHERE partidos = (SELECT partidos FROM jugadores ORDER BY goles DESC LIMIT 1);

-- 4. Promedio de goles de los jugadores que han jugado más de 5 partidos
SELECT AVG(goles) FROM jugadores WHERE partidos > 5;

-- 5. Cuántos jugadores han jugado más de 3 partidos
SELECT COUNT(*) FROM jugadores WHERE partidos > 3;

USE tienda_departamental;
-- 1. Obtener los artículos de mayor precio al promedio
SELECT * FROM articulos WHERE precio > (SELECT AVG(precio) FROM articulos);

-- 2. Empleados que han vendido más de 1500
SELECT * FROM empleados WHERE ventas > 1500;

-- 3. Sucursales donde se ha realizado al menos una venta
SELECT DISTINCT sucursal FROM ventas;

-- 4. Marcas con artículos que tienen más de 20 unidades en existencia
SELECT marca FROM articulos WHERE existencia > 20;

-- 5. Departamentos con al menos un artículo con existencia mayor a 65
SELECT DISTINCT departamento FROM articulos WHERE existencia > 65;

USE videojuego;
-- 1. Obtener el jugador con más experiencia
SELECT * FROM jugadores ORDER BY experiencia DESC LIMIT 1;

-- 2. Mostrar los ítems que han sido vendidos al menos una vez
SELECT * FROM items WHERE vendidos > 0;

-- 3. Mostrar qué jugadores tienen más de 2 ítems en el inventario
SELECT * FROM jugadores WHERE (SELECT COUNT(*) FROM inventario WHERE jugador_id = jugadores.id) > 2;

-- 4. Obtener los jugadores que no han hecho compras
SELECT * FROM jugadores WHERE id NOT IN (SELECT jugador_id FROM compras);

-- 5. Ítems que han sido comprados más de 3 veces
SELECT * FROM items WHERE compras > 3;