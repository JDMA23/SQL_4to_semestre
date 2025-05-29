USE escuela;
-- BASE DE DATOS: ESCUELA

-- DISTINCT
SELECT DISTINCT grado FROM estudiante;
SELECT DISTINCT precio FROM cafeteria;
SELECT DISTINCT horario FROM club;

-- LIMIT
SELECT * FROM maestro WHERE materia = 'Matemáticas' LIMIT 1;
SELECT nombre, materia FROM maestro LIMIT 3;
SELECT * FROM salidas LIMIT 4;

-- ORDER BY
SELECT * FROM estudiante ORDER BY nombre ASC;
SELECT * FROM estudiante ORDER BY grado DESC;
SELECT * FROM salidas ORDER BY cantidad DESC;

-- Operadores de comparación
SELECT * FROM salidas WHERE cantidad > 1000;
SELECT * FROM ingresos WHERE cantidad < 3000;
SELECT * FROM cafeteria WHERE precio <= 25;

-- LIKE
SELECT * FROM estudiante WHERE nombre LIKE 'J%';
SELECT * FROM maestro WHERE materia LIKE 'M%';
SELECT * FROM cafeteria WHERE producto LIKE 'C%';

-- BETWEEN
SELECT * FROM ingresos WHERE cantidad BETWEEN 1000 AND 2500;
SELECT * FROM cafeteria WHERE precio BETWEEN 40 AND 60;
SELECT * FROM maestro WHERE id BETWEEN 10 AND 20;

-- AND
SELECT * FROM estudiante WHERE grado = '1°' AND grupo = 'A';
SELECT * FROM maestro WHERE materia = 'Matemáticas' AND telefono IS NOT NULL;
SELECT * FROM ingresos WHERE cantidad < 5000 AND descripcion LIKE 'A%';

-- OR
SELECT * FROM estudiante WHERE grado IN ('1°', '2°', '3°');
SELECT * FROM maestro WHERE materia IN ('Matemáticas', 'Historia', 'Física');
SELECT * FROM club WHERE ubicacion IN ('Gimnasio', 'Biblioteca', 'Auditorio');

-- NOT
SELECT * FROM estudiante WHERE grado != '1°';
SELECT * FROM maestro WHERE materia != 'Inglés';
SELECT * FROM club WHERE ubicacion != 'Biblioteca';

-- IN
SELECT * FROM estudiante WHERE grado IN ('1°', '2°', '3°');
SELECT * FROM maestro WHERE materia IN ('Física', 'Química', 'Biología');
SELECT * FROM club WHERE ubicacion IN ('Gimnasio', 'Biblioteca', 'Aula');

-- Operaciones matemáticas
SELECT cantidad + (cantidad * 0.16) AS total_con_iva FROM ingresos;
SELECT cantidad - 500 AS salida_ajustada FROM salidas;
SELECT cantidad / 2 AS mitad FROM ingresos;

-- MIN
SELECT MIN(cantidad) FROM ingresos;
SELECT MIN(cantidad) FROM salidas;
SELECT MIN(precio) FROM cafeteria;

-- MAX
SELECT MAX(cantidad) FROM ingresos;
SELECT MAX(cantidad) FROM salidas;
SELECT MAX(precio) FROM cafeteria;

-- COUNT
SELECT COUNT(*) FROM estudiante;
SELECT COUNT(*) FROM maestro;
SELECT COUNT(*) FROM club;

-- SUM
SELECT SUM(cantidad) FROM ingresos;
SELECT SUM(cantidad) FROM salidas;
SELECT SUM(precio) FROM cafeteria;

-- AVG
SELECT AVG(cantidad) FROM ingresos;
SELECT AVG(cantidad) FROM salidas;
SELECT AVG(precio) FROM cafeteria;

-- CONCAT
SELECT CONCAT(nombre, ' - ', grado) AS estudiante_grado FROM estudiante;
SELECT CONCAT(nombre, ' - ', materia) AS maestro_materia FROM maestro;
SELECT CONCAT(nombre, ' - ', ubicacion) AS club_ubicacion FROM club;

-- UPPER
SELECT UPPER(nombre) FROM estudiante;
SELECT UPPER(materia) FROM maestro;
SELECT UPPER(ubicacion) FROM club;

-- LOWER
SELECT LOWER(nombre) FROM estudiante;
SELECT LOWER(materia) FROM maestro;
SELECT LOWER(ubicacion) FROM club;

-- OFFSET (usado con LIMIT)
SELECT * FROM estudiante LIMIT 5 OFFSET 10;
SELECT * FROM maestro LIMIT 3 OFFSET 5;
SELECT * FROM club LIMIT 4 OFFSET 3;

-- GROUP BY
SELECT grado, COUNT(*) AS total_estudiantes FROM estudiante GROUP BY grado;
SELECT materia, COUNT(*) AS total_maestros FROM maestro GROUP BY materia;
SELECT ubicacion, COUNT(*) AS total_clubes FROM club GROUP BY ubicacion;

-- HAVING
SELECT grado, COUNT(*) AS total FROM estudiante GROUP BY grado HAVING total > 5;
SELECT materia, COUNT(*) AS total FROM maestro GROUP BY materia HAVING total > 2;
SELECT ubicacion, COUNT(*) AS total FROM club GROUP BY ubicacion HAVING total > 1;

-- CASE
SELECT nombre, 
  CASE 
    WHEN grado = '1°' THEN 'Primer grado'
    WHEN grado = '2°' THEN 'Segundo grado'
    WHEN grado = '3°' THEN 'Tercer grado'
    ELSE 'Otro'
  END AS descripcion_grado
FROM estudiante;

SELECT producto, 
  CASE 
    WHEN precio < 20 THEN 'Barato'
    WHEN precio BETWEEN 20 AND 50 THEN 'Moderado'
    ELSE 'Caro'
  END AS categoria_precio
FROM cafeteria;

SELECT cantidad,
  CASE 
    WHEN cantidad < 1500 THEN 'Bajo'
    WHEN cantidad BETWEEN 1500 AND 4000 THEN 'Medio'
    ELSE 'Alto'
  END AS nivel_ingreso
FROM ingresos;

-- IFNULL
SELECT IFNULL(nombre, 'Sin nombre') AS nombre FROM estudiante;
SELECT IFNULL(telefono, 'No disponible') AS telefono FROM maestro;
SELECT IFNULL(ubicacion, 'Ubicación no registrada') AS ubicacion FROM club;
