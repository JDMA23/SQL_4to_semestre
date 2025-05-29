USE escuela;

-- INNER JOIN
-- Consulta 1: Obtener los nombres de los estudiantes y los clubes a los que están inscritos.
SELECT estudiante.nombre AS Nombre_Estudiante, club.nombre AS Nombre_Club
FROM estudiante
INNER JOIN club ON estudiante.aula = club.ubicacion;

-- Consulta 2: Obtener las materias y los maestros que las imparten.
SELECT materia.nombre_materia AS Materia, maestro.nombre AS Nombre_Maestro
FROM materia
INNER JOIN maestro ON materia.clave_maestro = maestro.clave_maestro;

-- LEFT JOIN
-- Consulta 1: Obtener todos los estudiantes y, si están inscritos en un club, mostrarlo.
SELECT estudiante.nombre AS Nombre_Estudiante, club.nombre AS Nombre_Club
FROM estudiante
LEFT JOIN club ON estudiante.aula = club.ubicacion;

-- Consulta 2: Obtener todas las materias y los maestros que las imparten, si hay alguno asignado.
SELECT materia.nombre_materia AS Materia, maestro.nombre AS Nombre_Maestro
FROM materia
LEFT JOIN maestro ON materia.clave_maestro = maestro.clave_maestro;

-- RIGHT JOIN
-- Consulta 1: Obtener todos los clubes y los estudiantes inscritos, si hay alguno.
SELECT club.nombre AS Nombre_Club, estudiante.nombre AS Nombre_Estudiante
FROM estudiante
RIGHT JOIN club ON estudiante.aula = club.ubicacion;

-- Consulta 2: Obtener todos los maestros y las materias que imparten, si hay alguna.
SELECT maestro.nombre AS Nombre_Maestro, materia.nombre_materia AS Materia
FROM materia
RIGHT JOIN maestro ON materia.clave_maestro = maestro.clave_maestro;


USE liga_futbol;

-- INNER JOIN
-- Consulta 1: Obtener los jugadores con su equipo y la categoría
SELECT jugador.nombre_jugador AS Nombre_Jugador, equipo.nombre_equipo AS Equipo, equipo.categoria AS Categoria
FROM jugador
INNER JOIN equipo ON jugador.nombre_equipo = equipo.nombre_equipo;

-- Consulta 2: Obtener los partidos con los nombres de los equipos que jugaron
SELECT partido.id_partido AS ID_Partido, e1.nombre_equipo AS Equipo_1, e2.nombre_equipo AS Equipo_2, partido.goles_equipo1, partido.goles_equipo2
FROM partido
INNER JOIN equipo e1 ON partido.equipo1 = e1.nombre_equipo
INNER JOIN equipo e2 ON partido.equipo2 = e2.nombre_equipo;

-- LEFT JOIN
-- Consulta 1: Obtener todos los equipos y los jugadores que pertenecen a ellos (incluye equipos sin jugadores)
SELECT equipo.nombre_equipo AS Equipo, jugador.nombre_jugador AS Nombre_Jugador
FROM equipo
LEFT JOIN jugador ON equipo.nombre_equipo = jugador.nombre_equipo;

-- Consulta 2: Obtener todos los árbitros y la categoría en la que trabajan (incluye árbitros sin categoría asignada)
SELECT arbitro.nombre AS Nombre_Arbitro, categorias.categoria AS Categoria, categorias.descripcion AS Descripcion
FROM arbitro
LEFT JOIN categorias ON arbitro.categoria = categorias.categoria;

-- RIGHT JOIN
-- Consulta 1: Obtener todos los jugadores y sus equipos (incluye jugadores sin equipo asignado)
SELECT jugador.nombre_jugador AS Nombre_Jugador, equipo.nombre_equipo AS Equipo
FROM jugador
RIGHT JOIN equipo ON jugador.nombre_equipo = equipo.nombre_equipo;

-- Consulta 2: Obtener todos los partidos y los equipos participantes (incluye partidos sin equipo asignado)
SELECT partido.id_partido AS ID_Partido, equipo.nombre_equipo AS Equipo, partido.goles_equipo1, partido.goles_equipo2
FROM partido
RIGHT JOIN equipo ON partido.equipo1 = equipo.nombre_equipo OR partido.equipo2 = equipo.nombre_equipo;


USE tienda_departamental;

-- INNER JOIN
-- Consulta 1: Mostrar los artículos junto con su departamento
SELECT articulo.nombre AS Nombre_Articulo, departamento.seccion AS Seccion_Departamento
FROM articulo
INNER JOIN departamento ON articulo.clave_departamento = departamento.clave_departamento;

-- Consulta 2: Mostrar las ventas con la información del cliente
SELECT ventas.numero_venta AS Numero_Venta, cliente.nombre AS Nombre_Cliente, ventas.ganancias AS Ganancia
FROM ventas
INNER JOIN cliente ON ventas.clave_cliente = cliente.clave_cliente;

-- LEFT JOIN
-- Consulta 1: Mostrar todos los clientes y sus compras (si las tienen)
SELECT cliente.nombre AS Nombre_Cliente, ventas.numero_venta AS Numero_Venta, ventas.ganancias AS Ganancia
FROM cliente
LEFT JOIN ventas ON cliente.clave_cliente = ventas.clave_cliente;

-- Consulta 2: Mostrar todos los artículos y su respectiva marca (si tienen)
SELECT articulo.nombre AS Nombre_Articulo, marca.descripcion AS Marca
FROM articulo
LEFT JOIN marca ON articulo.clave_marca = marca.clave_marca;

-- RIGHT JOIN
-- Consulta 1: Mostrar todas las marcas y los artículos que pertenecen a ellas (si tienen)
SELECT marca.descripcion AS Marca, articulo.nombre AS Nombre_Articulo
FROM articulo
RIGHT JOIN marca ON articulo.clave_marca = marca.clave_marca;

-- Consulta 2: Mostrar todos los departamentos y los artículos que tienen asignados (si tienen)
SELECT departamento.seccion AS Seccion_Departamento, articulo.nombre AS Nombre_Articulo
FROM articulo
RIGHT JOIN departamento ON articulo.clave_departamento = departamento.clave_departamento;


USE videojuego;

-- INNER JOIN
-- Consulta 1: Mostrar los resultados de los jugadores con su información
SELECT jugador.nombre AS Nombre_Jugador, resultado.puntuacion AS Puntuacion, resultado.posicion AS Posicion
FROM jugador
INNER JOIN resultado ON jugador.id_jugador = resultado.id_jugador;

-- Consulta 2: Mostrar los ítems comprados por los jugadores
SELECT jugador.nombre AS Nombre_Jugador, item.nombre_producto AS Nombre_Item, item.precio AS Precio
FROM jugador
INNER JOIN item ON jugador.id_jugador = item.id_jugador;

-- LEFT JOIN
-- Consulta 1: Mostrar todos los jugadores y sus resultados (si los tienen)
SELECT jugador.nombre AS Nombre_Jugador, resultado.puntuacion AS Puntuacion, resultado.posicion AS Posicion
FROM jugador
LEFT JOIN resultado ON jugador.id_jugador = resultado.id_jugador;

-- Consulta 2: Mostrar todos los jugadores y los ítems que poseen (si los tienen)
SELECT jugador.nombre AS Nombre_Jugador, item.nombre_producto AS Nombre_Item, item.precio AS Precio
FROM jugador
LEFT JOIN item ON jugador.id_jugador = item.id_jugador;

-- RIGHT JOIN
-- Consulta 1: Mostrar todas las misiones y los jugadores que las completaron (si existen en otra tabla)
SELECT misiones.nombre_mision AS Nombre_Mision, resultado.id_jugador AS ID_Jugador
FROM resultado
RIGHT JOIN misiones ON resultado.id_resultado = misiones.id_mision;

-- Consulta 2: Mostrar todos los ítems y los jugadores que los compraron (si los tienen)
SELECT item.nombre_producto AS Nombre_Item, item.precio AS Precio, jugador.nombre AS Nombre_Jugador
FROM jugador
RIGHT JOIN item ON jugador.id_jugador = item.id_jugador;

