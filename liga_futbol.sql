-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-05-2025 a las 17:11:51
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `liga_futbol`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arbitro`
--

CREATE TABLE `arbitro` (
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `especialidad` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `arbitro`
--

INSERT INTO `arbitro` (`nombre`, `telefono`, `categoria`, `especialidad`) VALUES
('Adrián Mendoza', '5551098765', 'Liga de Barrio', 'Partidos cortos'),
('Alejandro Vega', '5557890123', 'Segunda División', 'Mano intencional'),
('Andrés Paredes', '5553456789', 'Liga Escolar', 'Control de partidos'),
('Carlos Guzmán', '5552345678', 'Liga Municipal', 'Marcación de faltas'),
('Daniel Castro', '5557654321', 'Sub-20', 'Tiempo extra'),
('David Castillo', '5559876543', 'Fútbol Inclusivo', 'Discapacidad'),
('Diego Torres', '5558765432', 'Liga Internacional', 'FIFA'),
('Eduardo Silva', '5551234567', 'Liga Regional', 'Penales'),
('Emilio Fernández', '5554321098', 'Fútbol Mixto', 'Juego igualitario'),
('Ernesto Suárez', '5556543210', 'Sub-17', 'Reglas FIFA'),
('Felipe Gómez', '5550987654', 'Liga de Desarrollo', 'Talento joven'),
('Fernando López', '5559876543', 'Juvenil', 'Juego limpio'),
('Fernando Suárez', '5558765432', 'Liga Independiente', 'Reglamento'),
('Francisco Medina', '5559012345', 'Profesional', 'VAR'),
('Gabriel León', '5550987654', 'Liga de Clubes', 'Reglas avanzadas'),
('Gonzalo Sánchez', '5553210987', 'Liga Juvenil Elite', 'Juveniles'),
('Gustavo Morales', '5555678901', 'Tercera División', 'Juego aéreo'),
('Héctor García', '5554321098', 'Torneo Relámpago', 'Tiempos cortos'),
('Héctor Martínez', '5553456789', 'Senior', 'Control de faltas'),
('Hugo Ortega', '5555432109', 'Fútbol Playa', 'Reglas especiales'),
('Iván Márquez', '5556543210', 'Liga Estudiantil', 'Competencia escolar'),
('Javier Rodríguez', '5551234567', 'Infantil', 'Reglas básicas'),
('Jesús Ramírez', '5557654321', 'Fútbol Indoor', 'Cancha cerrada'),
('Joaquín Herrera', '5557654321', 'Fútbol Sala', 'Cancha reducida'),
('Luis Herrera', '5554321098', 'Sub-15', 'Penales'),
('Luis Ramírez', '5556543210', 'Fútbol 7', 'Juego dinámico'),
('Luis Torres', '5551098765', 'Liga Femenina Elite', 'Competencia femenina'),
('Manuel Soto', '5553210987', 'Sub-23', 'Fútbol rápido'),
('María González', '5552345678', 'Veteranos', 'Expulsiones'),
('Mario Pérez', '5552109876', 'Fútbol 5', 'Minifútbol'),
('Oscar López', '5559876543', 'Liga Nacional', 'Finales'),
('Pablo Ramírez', '5558901234', 'Amateur', 'Juego rudo'),
('Ramón Ortega', '5553210987', 'Sub-13', 'Tiros libres'),
('Raúl Estrada', '5554567890', 'Liga Universitaria', 'Tiempo extra'),
('Ricardo Morales', '5555432109', 'Liga Master', 'Juego pausado'),
('Ricardo Pérez', '5558765432', 'Femenil', 'Fútbol femenino'),
('Rodrigo Bravo', '5552109876', 'Liga de Empresas', 'Juego corporativo'),
('Sergio Ríos', '5556789012', 'Primera División', 'Offside'),
('Tomás Jiménez', '5550123456', 'Liga Estatal', 'Faltas tácticas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `categoria` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `numero_equipos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`categoria`, `descripcion`, `numero_equipos`) VALUES
('Amateur', 'Categoría recreativa', 7),
('Femenil', 'Categoría exclusiva para mujeres', 8),
('Fútbol 5', 'Categoría con equipos de 5 jugadores', 12),
('Fútbol 7', 'Categoría con equipos de 7 jugadores', 12),
('Fútbol Inclusivo', 'Categoría para jugadores con discapacidad', 6),
('Fútbol Indoor', 'Categoría de fútbol en cancha cerrada', 8),
('Fútbol Mixto', 'Categoría donde juegan hombres y mujeres', 8),
('Fútbol Playa', 'Categoría jugada en arena', 6),
('Fútbol Sala', 'Categoría de fútbol en cancha pequeña', 10),
('Infantil', 'Categoría para niños menores de 12 años', 10),
('Juvenil', 'Categoría para adolescentes entre 13 y 17 años', 12),
('Liga de Barrio', 'Categoría recreativa en barrios', 10),
('Liga de Clubes', 'Categoría con equipos de clubes privados', 9),
('Liga de Desarrollo', 'Categoría de formación de nuevos talentos', 10),
('Liga de Empresas', 'Categoría para equipos de empresas', 7),
('Liga Escolar', 'Categoría de escuelas secundarias', 10),
('Liga Estatal', 'Categoría de competencia estatal', 9),
('Liga Estudiantil', 'Categoría de equipos de preparatorias', 10),
('Liga Femenina Elite', 'Categoría de alto rendimiento femenino', 8),
('Liga Independiente', 'Categoría sin afiliación a federaciones', 10),
('Liga Internacional', 'Categoría de equipos de distintos países', 8),
('Liga Juvenil Elite', 'Categoría de alto rendimiento juvenil', 10),
('Liga Master', 'Categoría de jugadores mayores de 40 años', 6),
('Liga Municipal', 'Categoría de equipos locales', 12),
('Liga Nacional', 'Categoría de competencia nacional', 10),
('Liga Regional', 'Categoría de equipos de diferentes regiones', 10),
('Liga Universitaria', 'Categoría de equipos universitarios', 8),
('Primera División', 'Categoría de alto nivel competitivo', 12),
('Profesional', 'Categoría de jugadores profesionales', 10),
('Segunda División', 'Categoría de nivel intermedio', 14),
('Senior', 'Categoría para adultos mayores de 18 años', 14),
('Sub-13', 'Categoría para jugadores menores de 13 años', 8),
('Sub-15', 'Categoría para jugadores menores de 15 años', 9),
('Sub-17', 'Categoría para jugadores menores de 17 años', 10),
('Sub-20', 'Categoría de formación de jóvenes talentos', 10),
('Sub-23', 'Categoría para jugadores menores de 23 años', 10),
('Tercera División', 'Categoría de desarrollo de jugadores', 10),
('Torneo Relámpago', 'Categoría de torneos cortos', 8),
('Veteranos', 'Categoría para jugadores mayores de 35 años', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `nombre_equipo` varchar(100) NOT NULL,
  `director_tecnico` varchar(100) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `capitan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`nombre_equipo`, `director_tecnico`, `categoria`, `capitan`) VALUES
('Águilas FC', 'Marco Torres', 'Juvenil', 'Diego López'),
('Ballenas FC', 'Óscar Fernández', 'Profesional', 'Carlos Medina'),
('Búhos FC', 'Daniel Jiménez', 'Sub-13', 'Álvaro Mendoza'),
('Caimanes FC', 'Antonio Ríos', 'Veteranos', 'Miguel Chávez'),
('Caracoles FC', 'Jorge Ramírez', 'Profesional', 'Antonio Martínez'),
('Cóndores FC', 'Héctor Vargas', 'Senior', 'Ricardo Reyes'),
('Corsarios FC', 'Manuel Ríos', 'Liga Universitaria', 'Sergio Flores'),
('Coyotes FC', 'Felipe Ramírez', 'Sub-15', 'Hugo León'),
('Delfines FC', 'Adrián Estrada', 'Liga Regional', 'Roberto Jiménez'),
('Dragones FC', 'Eduardo Medina', 'Senior', 'José Márquez'),
('Fantasmas FC', 'Eduardo Flores', 'Tercera División', 'Héctor Vega'),
('Fénix FC', 'Javier Vega', 'Tercera División', 'Jorge Ríos'),
('Gorilas FC', 'Gabriel Estrada', 'Amateur', 'Rodrigo Paredes'),
('Halcones FC', 'Roberto Jiménez', 'Femenil', 'Sofía Fernández'),
('Héroes FC', 'Andrés Torres', 'Liga Municipal', 'Antonio Serrano'),
('Jaguares FC', 'Carlos Velázquez', 'Sub-20', 'Jorge Figueroa'),
('Leones FC', 'Juan Pérez', 'Infantil', 'Carlos Ramírez'),
('Lobos FC', 'Gustavo Campos', 'Sub-17', 'Adrián Serrano'),
('Mapaches FC', 'Carlos Medina', 'Liga Estatal', 'Óscar Cordero'),
('Monstruos FC', 'Gustavo Vargas', 'Liga Municipal', 'Ricardo Castro'),
('Ninjas FC', 'Fernando López', 'Liga Escolar', 'Miguel Chávez'),
('Osos FC', 'Francisco Silva', 'Sub-17', 'Ernesto Bravo'),
('Panteras FC', 'Armando Vega', 'Sub-15', 'Jesús Montes'),
('Peces FC', 'Jesús Montes', 'Liga Estatal', 'Álvaro Mendoza'),
('Pegasos FC', 'David Morales', 'Segunda División', 'Raúl Ramírez'),
('Perros FC', 'Tomás Guzmán', 'Liga Nacional', 'Luis Castillo'),
('Pumas FC', 'Javier Castro', 'Juvenil', 'Fernando Ortega'),
('Quetzales FC', 'Alejandro Chávez', 'Segunda División', 'Andrés Ortiz'),
('Raptors FC', 'Miguel Soto', 'Primera División', 'Fernando García'),
('Samuráis FC', 'Luis Serrano', 'Liga Escolar', 'Carlos Pérez'),
('Serpientes FC', 'Iván Cordero', 'Amateur', 'Sebastián Palma'),
('Tiburones FC', 'Manuel Estrada', 'Femenil', 'Lucía Hernández'),
('Tiburones Rojos', 'Ernesto Bravo', 'Liga Regional', 'David Soto'),
('Tigres FC', 'Luis Gómez', 'Infantil', 'Pedro Sánchez'),
('Toros FC', 'Ramón Herrera', 'Veteranos', 'Daniel Ortiz'),
('Triceratops FC', 'Pedro Castillo', 'Primera División', 'Luis Castillo'),
('Venados FC', 'Andrés Paredes', 'Sub-20', 'Óscar Mendoza'),
('Vikingos FC', 'Roberto Méndez', 'Liga Universitaria', 'Diego Aguilar'),
('Zorros FC', 'Raúl Escobar', 'Sub-13', 'Tomás Guzmán');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadisticas_jugador`
--

CREATE TABLE `estadisticas_jugador` (
  `id_estadistica` int(11) NOT NULL,
  `numero_jugador` int(11) NOT NULL,
  `goles` int(11) DEFAULT 0,
  `asistencias` int(11) DEFAULT 0,
  `tarjetas_amarillas` int(11) DEFAULT 0,
  `tarjetas_rojas` int(11) DEFAULT 0,
  `partidos_jugados` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estadisticas_jugador`
--

INSERT INTO `estadisticas_jugador` (`id_estadistica`, `numero_jugador`, `goles`, `asistencias`, `tarjetas_amarillas`, `tarjetas_rojas`, `partidos_jugados`) VALUES
(1, 1, 5, 3, 1, 0, 10),
(2, 2, 8, 5, 2, 0, 12),
(3, 3, 2, 1, 0, 0, 8),
(4, 4, 12, 4, 3, 1, 15),
(5, 5, 10, 2, 1, 0, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `numero_jugador` int(11) NOT NULL,
  `nombre_jugador` varchar(100) NOT NULL,
  `goles` int(11) DEFAULT 0,
  `partidos_jugados` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`numero_jugador`, `nombre_jugador`, `goles`, `partidos_jugados`) VALUES
(1, 'Leandro Cufré', 2, 4),
(2, 'Damián Álvarez', 4, 4),
(3, 'Fernando Cavenaghi', 2, 2),
(4, 'Mauricio Pineda', 0, 1),
(5, 'Ricardo Centurión', 0, 1),
(6, 'Carlos Tévez', 2, 2),
(7, 'Emiliano Insúa', 1, 4),
(8, 'Gonzalo Higuaín', 4, 4),
(9, 'Maximiliano Rodríguez', 3, 5),
(10, 'Gonzalo Castro', 0, 2),
(11, 'Javier Hernández', 3, 6),
(12, 'Sergio Agüero', 5, 7),
(13, 'Lionel Messi', 6, 7),
(14, 'Ángel Di María', 3, 6),
(15, 'Ever Banega', 1, 4),
(16, 'Ezequiel Garay', 2, 5),
(17, 'Nicolás Otamendi', 1, 3),
(18, 'Lucas Biglia', 0, 4),
(19, 'Javier Mascherano', 0, 6),
(20, 'Enzo Pérez', 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partido`
--

CREATE TABLE `partido` (
  `id_partido` int(11) NOT NULL,
  `equipo1` varchar(100) DEFAULT NULL,
  `equipo2` varchar(100) DEFAULT NULL,
  `goles_equipo1` int(11) DEFAULT NULL,
  `goles_equipo2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `partido`
--

INSERT INTO `partido` (`id_partido`, `equipo1`, `equipo2`, `goles_equipo1`, `goles_equipo2`) VALUES
(1, 'Leones FC', 'Tigres FC', 2, 1),
(2, 'Águilas FC', 'Pumas FC', 0, 0),
(3, 'Dragones FC', 'Cóndores FC', 3, 2),
(4, 'Tiburones FC', 'Halcones FC', 1, 1),
(5, 'Caimanes FC', 'Toros FC', 4, 0),
(6, 'Jaguares FC', 'Venados FC', 2, 3),
(7, 'Osos FC', 'Lobos FC', 0, 2),
(8, 'Coyotes FC', 'Panteras FC', 3, 3),
(9, 'Zorros FC', 'Búhos FC', 1, 0),
(10, 'Gorilas FC', 'Serpientes FC', 2, 1),
(11, 'Caracoles FC', 'Ballenas FC', 3, 5),
(12, 'Triceratops FC', 'Raptors FC', 0, 2),
(13, 'Pegasos FC', 'Quetzales FC', 1, 1),
(14, 'Fénix FC', 'Fantasmas FC', 2, 0),
(15, 'Corsarios FC', 'Vikingos FC', 4, 4),
(16, 'Samuráis FC', 'Ninjas FC', 3, 2),
(17, 'Monstruos FC', 'Héroes FC', 1, 3),
(18, 'Tiburones Rojos', 'Delfines FC', 2, 2),
(19, 'Mapaches FC', 'Peces FC', 0, 1),
(20, 'Perros FC', 'Leones FC', 1, 0),
(21, 'Tigres FC', 'Águilas FC', 2, 3),
(22, 'Pumas FC', 'Dragones FC', 1, 2),
(23, 'Cóndores FC', 'Tiburones FC', 0, 1),
(24, 'Halcones FC', 'Caimanes FC', 3, 0),
(25, 'Toros FC', 'Jaguares FC', 2, 2),
(26, 'Venados FC', 'Osos FC', 1, 1),
(27, 'Lobos FC', 'Coyotes FC', 3, 2),
(28, 'Panteras FC', 'Zorros FC', 1, 4),
(29, 'Búhos FC', 'Gorilas FC', 2, 2),
(30, 'Serpientes FC', 'Caracoles FC', 3, 1),
(31, 'Ballenas FC', 'Triceratops FC', 0, 0),
(32, 'Raptors FC', 'Pegasos FC', 4, 1),
(33, 'Quetzales FC', 'Fénix FC', 2, 0),
(34, 'Fantasmas FC', 'Corsarios FC', 1, 1),
(35, 'Vikingos FC', 'Samuráis FC', 3, 3),
(36, 'Ninjas FC', 'Monstruos FC', 2, 1),
(37, 'Héroes FC', 'Tiburones Rojos', 0, 3),
(38, 'Delfines FC', 'Mapaches FC', 4, 2),
(39, 'Peces FC', 'Perros FC', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_posiciones`
--

CREATE TABLE `tabla_posiciones` (
  `id_tabla` int(11) NOT NULL,
  `posicion` int(11) DEFAULT NULL,
  `equipo` varchar(100) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `puntos` int(11) DEFAULT NULL,
  `goles` int(11) DEFAULT NULL,
  `goles_contra` int(11) DEFAULT NULL,
  `goles_favor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tabla_posiciones`
--

INSERT INTO `tabla_posiciones` (`id_tabla`, `posicion`, `equipo`, `categoria`, `puntos`, `goles`, `goles_contra`, `goles_favor`) VALUES
(1, 1, 'Leones FC', 'Infantil', 18, 20, 10, 30),
(2, 2, 'Tigres FC', 'Infantil', 15, 18, 12, 25),
(3, 3, 'Águilas FC', 'Juvenil', 17, 22, 15, 28),
(4, 4, 'Pumas FC', 'Juvenil', 12, 14, 17, 21),
(5, 5, 'Dragones FC', 'Senior', 20, 25, 11, 34),
(6, 6, 'Cóndores FC', 'Senior', 14, 19, 14, 27),
(7, 7, 'Tiburones FC', 'Femenil', 16, 20, 13, 29),
(8, 8, 'Halcones FC', 'Femenil', 11, 13, 18, 22),
(9, 9, 'Caimanes FC', 'Veteranos', 10, 12, 20, 18),
(10, 10, 'Toros FC', 'Veteranos', 19, 23, 9, 32),
(11, 11, 'Jaguares FC', 'Sub-20', 18, 21, 10, 31),
(12, 12, 'Venados FC', 'Sub-20', 15, 19, 12, 28),
(13, 13, 'Osos FC', 'Sub-17', 13, 16, 14, 24),
(14, 14, 'Lobos FC', 'Sub-17', 17, 20, 11, 29),
(15, 15, 'Coyotes FC', 'Sub-15', 12, 15, 17, 21),
(16, 16, 'Panteras FC', 'Sub-15', 20, 24, 8, 33),
(17, 17, 'Zorros FC', 'Sub-13', 14, 17, 14, 26),
(18, 18, 'Búhos FC', 'Sub-13', 10, 12, 19, 18),
(19, 19, 'Gorilas FC', 'Amateur', 18, 22, 10, 30),
(20, 20, 'Serpientes FC', 'Amateur', 13, 16, 14, 24),
(21, 21, 'Caracoles FC', 'Profesional', 17, 21, 11, 29),
(22, 22, 'Ballenas FC', 'Profesional', 12, 14, 17, 21),
(23, 23, 'Triceratops FC', 'Primera División', 15, 19, 12, 27),
(24, 24, 'Raptors FC', 'Primera División', 20, 25, 9, 34),
(25, 25, 'Pegasos FC', 'Segunda División', 18, 22, 10, 31),
(26, 26, 'Quetzales FC', 'Segunda División', 14, 17, 14, 26),
(27, 27, 'Fénix FC', 'Tercera División', 12, 15, 17, 21),
(28, 28, 'Fantasmas FC', 'Tercera División', 10, 12, 20, 18),
(29, 29, 'Corsarios FC', 'Liga Universitaria', 16, 19, 13, 27),
(30, 30, 'Vikingos FC', 'Liga Universitaria', 13, 16, 14, 24),
(31, 31, 'Samuráis FC', 'Liga Escolar', 11, 13, 18, 22),
(32, 32, 'Ninjas FC', 'Liga Escolar', 14, 17, 14, 26),
(33, 33, 'Monstruos FC', 'Liga Municipal', 20, 24, 8, 33),
(34, 34, 'Héroes FC', 'Liga Municipal', 12, 15, 17, 21),
(35, 35, 'Tiburones Rojos', 'Liga Regional', 19, 23, 9, 32),
(36, 36, 'Delfines FC', 'Liga Regional', 10, 12, 20, 18),
(37, 37, 'Mapaches FC', 'Liga Estatal', 17, 21, 11, 29),
(38, 38, 'Peces FC', 'Liga Estatal', 12, 14, 17, 21),
(39, 39, 'Perros FC', 'Liga Nacional', 18, 22, 10, 30),
(40, 40, 'Leones FC', 'Liga Nacional', 15, 19, 12, 28);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arbitro`
--
ALTER TABLE `arbitro`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`categoria`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`nombre_equipo`),
  ADD KEY `categoria` (`categoria`);

--
-- Indices de la tabla `estadisticas_jugador`
--
ALTER TABLE `estadisticas_jugador`
  ADD PRIMARY KEY (`id_estadistica`),
  ADD KEY `numero_jugador` (`numero_jugador`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`numero_jugador`);

--
-- Indices de la tabla `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`id_partido`),
  ADD KEY `equipo1` (`equipo1`),
  ADD KEY `equipo2` (`equipo2`);

--
-- Indices de la tabla `tabla_posiciones`
--
ALTER TABLE `tabla_posiciones`
  ADD PRIMARY KEY (`id_tabla`),
  ADD KEY `equipo` (`equipo`),
  ADD KEY `categoria` (`categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estadisticas_jugador`
--
ALTER TABLE `estadisticas_jugador`
  MODIFY `id_estadistica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `jugador`
--
ALTER TABLE `jugador`
  MODIFY `numero_jugador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `partido`
--
ALTER TABLE `partido`
  MODIFY `id_partido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `tabla_posiciones`
--
ALTER TABLE `tabla_posiciones`
  MODIFY `id_tabla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `equipo_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`categoria`);

--
-- Filtros para la tabla `estadisticas_jugador`
--
ALTER TABLE `estadisticas_jugador`
  ADD CONSTRAINT `estadisticas_jugador_ibfk_1` FOREIGN KEY (`numero_jugador`) REFERENCES `jugador` (`numero_jugador`);

--
-- Filtros para la tabla `partido`
--
ALTER TABLE `partido`
  ADD CONSTRAINT `partido_ibfk_1` FOREIGN KEY (`equipo1`) REFERENCES `equipo` (`nombre_equipo`),
  ADD CONSTRAINT `partido_ibfk_2` FOREIGN KEY (`equipo2`) REFERENCES `equipo` (`nombre_equipo`);

--
-- Filtros para la tabla `tabla_posiciones`
--
ALTER TABLE `tabla_posiciones`
  ADD CONSTRAINT `tabla_posiciones_ibfk_1` FOREIGN KEY (`equipo`) REFERENCES `equipo` (`nombre_equipo`),
  ADD CONSTRAINT `tabla_posiciones_ibfk_2` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
