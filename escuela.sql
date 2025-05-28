-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-05-2025 a las 17:11:37
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
-- Base de datos: `escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `id_asistencia` int(11) NOT NULL,
  `numero_control` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `asistio` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`id_asistencia`, `numero_control`, `fecha`, `asistio`) VALUES
(1, 1, '2025-05-01', 1),
(2, 2, '2025-05-01', 0),
(3, 3, '2025-05-01', 1),
(4, 4, '2025-05-01', 1),
(5, 5, '2025-05-01', 1),
(6, 6, '2025-05-01', 0),
(7, 7, '2025-05-01', 1),
(8, 8, '2025-05-01', 1),
(9, 9, '2025-05-01', 1),
(10, 10, '2025-05-01', 0),
(11, 11, '2025-05-01', 1),
(12, 12, '2025-05-01', 1),
(13, 13, '2025-05-01', 1),
(14, 14, '2025-05-01', 1),
(15, 15, '2025-05-01', 1),
(16, 16, '2025-05-01', 0),
(17, 17, '2025-05-01', 1),
(18, 18, '2025-05-01', 1),
(19, 19, '2025-05-01', 0),
(20, 20, '2025-05-01', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cafeteria`
--

CREATE TABLE `cafeteria` (
  `producto` varchar(255) NOT NULL,
  `precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cafeteria`
--

INSERT INTO `cafeteria` (`producto`, `precio`) VALUES
('Agua embotellada', 15.00),
('Bagel', 45.00),
('Barra de cereal', 25.00),
('Bebida energética', 50.00),
('Brownie', 40.00),
('Burritos', 52.00),
('Café', 25.00),
('Chips', 20.00),
('Churros', 30.00),
('Crepas', 48.00),
('Croissant', 42.00),
('Dona', 30.00),
('Empanada', 40.00),
('Ensalada', 55.00),
('Flan', 38.00),
('Fruta picada', 28.00),
('Galletas', 18.00),
('Gelatina', 15.00),
('Hamburguesa', 50.00),
('Helado', 35.00),
('Hot dog', 38.00),
('Jugo natural', 30.00),
('Malteada', 50.00),
('Nachos con queso', 47.00),
('Palomitas', 25.00),
('Pan dulce', 22.00),
('Papas a la francesa', 42.00),
('Pasta', 60.00),
('Pastel de chocolate', 42.00),
('Pizza', 45.00),
('Quesadilla', 35.00),
('Refresco', 20.00),
('Sándwich', 35.00),
('Smoothie', 55.00),
('Sopa instantánea', 32.00),
('Tacos', 48.00),
('Tamales', 45.00),
('Torta de jamón', 40.00),
('Tostadas', 27.00),
('Yogur con fruta', 38.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id_calificacion` int(11) NOT NULL,
  `numero_control` int(11) NOT NULL,
  `clave_materia` int(11) NOT NULL,
  `calificacion` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`id_calificacion`, `numero_control`, `clave_materia`, `calificacion`) VALUES
(1, 1, 1, 8.50),
(2, 2, 2, 9.00),
(3, 3, 3, 7.80),
(4, 4, 4, 8.00),
(5, 5, 5, 9.50),
(6, 6, 6, 7.00),
(7, 7, 7, 8.20),
(8, 8, 8, 9.30),
(9, 9, 9, 7.90),
(10, 10, 10, 8.70),
(11, 11, 11, 9.10),
(12, 12, 12, 7.50),
(13, 13, 13, 9.40),
(14, 14, 14, 8.30),
(15, 15, 15, 9.20),
(16, 16, 16, 7.80),
(17, 17, 17, 8.60),
(18, 18, 18, 9.00),
(19, 19, 19, 7.30),
(20, 20, 20, 8.40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `club`
--

CREATE TABLE `club` (
  `nombre` varchar(255) NOT NULL,
  `encargado` varchar(255) DEFAULT NULL,
  `horario` varchar(100) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `club`
--

INSERT INTO `club` (`nombre`, `encargado`, `horario`, `ubicacion`) VALUES
('Ajedrez', 'Santiago Rojas', 'Miércoles 5PM', 'Biblioteca'),
('Artes Marciales', 'Sofía Castillo', 'Miércoles 4PM', 'Gimnasio'),
('Astronomía', 'Francisco Gutiérrez', 'Jueves 4PM', 'Laboratorio 3'),
('Baile Moderno', 'Laura Herrera', 'Viernes 5PM', 'Salón 110'),
('Ballet', 'Daniela Navas', 'Lunes 4PM', 'Salón 112'),
('Baloncesto', 'Andrea Torres', 'Martes 5PM', 'Gimnasio'),
('Batería', 'Ana Esquivel', 'Martes 5PM', 'Salón 107'),
('Breakdance', 'Regina Vargas', 'Martes 4PM', 'Salón 111'),
('Canto', 'Valeria Paredes', 'Jueves 3PM', 'Salón 109'),
('Ciclismo', 'Kevin Ramírez', 'Viernes 5PM', 'Estacionamiento'),
('Ciencia', 'Fernando Castro', 'Martes 4PM', 'Laboratorio 1'),
('Cocina', 'Marta Cordero', 'Lunes 3PM', 'Cafetería'),
('Cómic', 'Óscar Suárez', 'Miércoles 5PM', 'Biblioteca'),
('Danza', 'Lucía Ramírez', 'Lunes 3PM', 'Salón 102'),
('Debate', 'Hugo Ortega', 'Viernes 5PM', 'Auditorio'),
('Dibujo', 'Fernando Flores', 'Viernes 3PM', 'Salón de Arte 2'),
('Esgrima', 'Ricardo Chávez', 'Miércoles 4PM', 'Cancha 2'),
('Fotografía', 'Mariana Suárez', 'Viernes 3PM', 'Sala Audiovisual'),
('Fútbol', 'Carlos Ruiz', 'Lunes 4PM', 'Cancha Principal'),
('Guitarra', 'José Ramírez', 'Lunes 4PM', 'Salón 106'),
('Jardinería', 'Ximena Domínguez', 'Viernes 3PM', 'Invernadero'),
('Karate', 'Javier Vázquez', 'Martes 5PM', 'Gimnasio'),
('Letras', 'Alejandra Luna', 'Miércoles 5PM', 'Biblioteca 2'),
('Lógica', 'Gabriela Navarro', 'Miércoles 5PM', 'Salón 105'),
('Matemáticas', 'Emilio Reyes', 'Martes 4PM', 'Salón 104'),
('Música', 'Rodrigo Méndez', 'Viernes 5PM', 'Salón 101'),
('Natación', 'Diego Salinas', 'Miércoles 4PM', 'Alberca'),
('Oratoria', 'Paula Jiménez', 'Jueves 3PM', 'Salón 103'),
('Parkour', 'Ricardo Fuentes', 'Martes 5PM', 'Cancha Libre'),
('Periodismo', 'Melissa Esquivel', 'Lunes 3PM', 'Salón de Prensa'),
('Pintura', 'Alejandra Díaz', 'Jueves 4PM', 'Salón de Arte'),
('Robótica', 'Luis Peña', 'Lunes 4PM', 'Laboratorio 2'),
('Skateboarding', 'Mateo Mendoza', 'Lunes 3PM', 'Cancha de Skate'),
('Surf', 'Javier Ortega', 'Jueves 3PM', 'Playa Artificial'),
('Teatro', 'Camila López', 'Jueves 3PM', 'Auditorio'),
('Tiro con Arco', 'Roberto Fernández', 'Jueves 4PM', 'Campo de Tiro'),
('Videojuegos', 'Andrea Álvarez', 'Jueves 4PM', 'Sala de Cómputo'),
('Violín', 'Leonardo Vega', 'Miércoles 4PM', 'Salón 108'),
('Yoga', 'Diego Herrera', 'Martes 4PM', 'Salón 113');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `numero_control` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `aula` varchar(50) DEFAULT NULL,
  `grado` varchar(50) DEFAULT NULL,
  `grupo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`numero_control`, `nombre`, `aula`, `grado`, `grupo`) VALUES
(1, 'Juan Pérez', 'A101', '1°', 'A'),
(2, 'María López', 'A102', '1°', 'B'),
(3, 'Carlos Gómez', 'A103', '2°', 'A'),
(4, 'Ana Martínez', 'A104', '2°', 'B'),
(5, 'Pedro Sánchez', 'A105', '3°', 'A'),
(6, 'Laura Fernández', 'A106', '3°', 'B'),
(7, 'Luis Ramírez', 'A107', '4°', 'A'),
(8, 'Sofía Torres', 'A108', '4°', 'B'),
(9, 'Diego Herrera', 'A109', '5°', 'A'),
(10, 'Valeria Díaz', 'A110', '5°', 'B'),
(11, 'Ricardo Castillo', 'A111', '6°', 'A'),
(12, 'Andrea Mendoza', 'A112', '6°', 'B'),
(13, 'Fernando Ríos', 'A113', '1°', 'A'),
(14, 'Camila Vargas', 'A114', '1°', 'B'),
(15, 'Hugo Flores', 'A115', '2°', 'A'),
(16, 'Paula Gutiérrez', 'A116', '2°', 'B'),
(17, 'Javier Ortega', 'A117', '3°', 'A'),
(18, 'Isabela León', 'A118', '3°', 'B'),
(19, 'Óscar Navarro', 'A119', '4°', 'A'),
(20, 'Regina Chávez', 'A120', '4°', 'B'),
(21, 'Daniela Jiménez', 'A121', '5°', 'A'),
(22, 'Mateo Álvarez', 'A122', '5°', 'B'),
(23, 'Santiago Morales', 'A123', '6°', 'A'),
(24, 'Victoria Suárez', 'A124', '6°', 'B'),
(25, 'Emilio Peña', 'A125', '1°', 'A'),
(26, 'Adriana Cordero', 'A126', '1°', 'B'),
(27, 'Leonardo Castro', 'A127', '2°', 'A'),
(28, 'Gabriela Méndez', 'A128', '2°', 'B'),
(29, 'Francisco Reyes', 'A129', '3°', 'A'),
(30, 'Ximena Romero', 'A130', '3°', 'B'),
(31, 'José Vázquez', 'A131', '4°', 'A'),
(32, 'Mariana Aguilar', 'A132', '4°', 'B'),
(33, 'Ángel Estrada', 'A133', '5°', 'A'),
(34, 'Sara Domínguez', 'A134', '5°', 'B'),
(35, 'Iván Paredes', 'A135', '6°', 'A'),
(36, 'Alejandra Navas', 'A136', '6°', 'B'),
(37, 'Kevin Vega', 'A137', '1°', 'A'),
(38, 'Melissa Luna', 'A138', '1°', 'B'),
(39, 'Roberto Esquivel', 'A139', '2°', 'A'),
(40, 'Daniela Fuentes', 'A140', '2°', 'B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id_evento` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `ubicacion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id_evento`, `nombre`, `fecha`, `ubicacion`) VALUES
(1, 'Torneo de Ajedrez', '2025-06-01', 'Auditorio'),
(2, 'Feria de Ciencias', '2025-06-10', 'Gimnasio'),
(3, 'Concierto de Música', '2025-06-15', 'Auditorio'),
(4, 'Exposición de Arte', '2025-06-20', 'Salón de Arte'),
(5, 'Torneo de Fútbol', '2025-06-25', 'Cancha Principal'),
(6, 'Carnaval Escolar', '2025-06-30', 'Estacionamiento'),
(7, 'Festival de Danza', '2025-07-05', 'Salón 110'),
(8, 'Concurso de Canto', '2025-07-10', 'Salón 109'),
(9, 'Maratón de Programación', '2025-07-15', 'Laboratorio 2'),
(10, 'Competencia de Robótica', '2025-07-20', 'Auditorio'),
(11, 'Rally Escolar', '2025-07-25', 'Cancha Libre'),
(12, 'Noche de Poesía', '2025-08-01', 'Biblioteca'),
(13, 'Feria de Arte', '2025-08-05', 'Salón de Arte 2'),
(14, 'Competencia de Matemáticas', '2025-08-10', 'Auditorio'),
(15, 'Exposición de Ciencia', '2025-08-15', 'Gimnasio'),
(16, 'Encuentro de Deportes', '2025-08-20', 'Cancha Principal'),
(17, 'Semana Cultural', '2025-08-25', 'Toda la escuela'),
(18, 'Festival de Talento', '2025-08-30', 'Auditorio'),
(19, 'Concurso de Pintura', '2025-09-05', 'Salón de Arte'),
(20, 'Feria Gastronómica', '2025-09-10', 'Cafetería');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `clave_ingreso` int(11) NOT NULL,
  `asunto` text DEFAULT NULL,
  `cantidad` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`clave_ingreso`, `asunto`, `cantidad`) VALUES
(1, 'Venta de uniformes', 5000.00),
(2, 'Pago de colegiatura', 12000.00),
(3, 'Donación anónima', 1500.00),
(4, 'Rifa escolar', 3000.00),
(5, 'Venta de comida', 4500.00),
(6, 'Venta de libros', 3200.00),
(7, 'Pago de excursión', 7000.00),
(8, 'Venta de boletos para teatro', 2500.00),
(9, 'Pago de inscripción', 18000.00),
(10, 'Patrocinio de empresa local', 9000.00),
(11, 'Pago de taller de música', 5200.00),
(12, 'Venta de artículos escolares', 6100.00),
(13, 'Donación de padres de familia', 4000.00),
(14, 'Recaudación del evento de ciencias', 4300.00),
(15, 'Pago de torneo deportivo', 4800.00),
(16, 'Venta de snacks', 2900.00),
(17, 'Pago de curso de verano', 10500.00),
(18, 'Alquiler de canchas', 3500.00),
(19, 'Pago de exámenes', 8700.00),
(20, 'Inscripción a olimpiada de matemáticas', 6000.00),
(21, 'Venta de fotografías escolares', 3800.00),
(22, 'Pago de cursos de refuerzo', 7700.00),
(23, 'Apoyo del gobierno', 20000.00),
(24, 'Ingreso por festival de talentos', 6800.00),
(25, 'Venta de material didáctico', 5400.00),
(26, 'Renta del auditorio', 7200.00),
(27, 'Venta de sudaderas del colegio', 3200.00),
(28, 'Pago de certificados', 5600.00),
(29, 'Venta de souvenirs del colegio', 2700.00),
(30, 'Pago por diplomado', 9900.00),
(31, 'Inscripción a torneo de ajedrez', 5100.00),
(32, 'Venta de paseos escolares', 7300.00),
(33, 'Venta de artesanías', 3100.00),
(34, 'Apoyo de ONG', 4500.00),
(35, 'Pago de entrenamientos deportivos', 8200.00),
(36, 'Recaudación en kermés', 7000.00),
(37, 'Venta de juguetes educativos', 2400.00),
(38, 'Subasta escolar', 6500.00),
(39, 'Apoyo de exalumnos', 5600.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestro`
--

CREATE TABLE `maestro` (
  `clave_maestro` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `materia` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `maestro`
--

INSERT INTO `maestro` (`clave_maestro`, `nombre`, `materia`, `telefono`) VALUES
(1, 'Luis Pérez', 'Matemáticas', '5551234567'),
(2, 'María López', 'Español', '5552345678'),
(3, 'Javier Ramírez', 'Historia', '5553456789'),
(4, 'Andrea Torres', 'Biología', '5554567890'),
(5, 'Fernando Castillo', 'Química', '5555678901'),
(6, 'Sofía Herrera', 'Física', '5556789012'),
(7, 'Diego Mendoza', 'Inglés', '5557890123'),
(8, 'Camila Suárez', 'Geografía', '5558901234'),
(9, 'Ricardo Vargas', 'Artes', '5559012345'),
(10, 'Valeria Ríos', 'Educación Física', '5550123456'),
(11, 'Hugo Ortega', 'Música', '5551234568'),
(12, 'Paula Jiménez', 'Computación', '5552345679'),
(13, 'Oscar Navarro', 'Ciencias Sociales', '5553456780'),
(14, 'Daniela Chávez', 'Literatura', '5554567891'),
(15, 'Mateo Fernández', 'Filosofía', '5555678902'),
(16, 'Regina Domínguez', 'Derecho', '5556789013'),
(17, 'José Álvarez', 'Psicología', '5557890124'),
(18, 'Leonardo Méndez', 'Ética', '5558901235'),
(19, 'Francisco Reyes', 'Economía', '5559012346'),
(20, 'Ximena Romero', 'Astronomía', '5550123457'),
(21, 'Kevin Vega', 'Programación', '5551234569'),
(22, 'Gabriela Esquivel', 'Estadística', '5552345670'),
(23, 'Iván Paredes', 'Dibujo Técnico', '5553456781'),
(24, 'Mariana Castillo', 'Robótica', '5554567892'),
(25, 'Ángel Fuentes', 'Neurociencia', '5555678903'),
(26, 'Melissa Luna', 'Genética', '5556789014'),
(27, 'Roberto Fernández', 'Fotografía', '5557890125'),
(28, 'Alejandra Navas', 'Ciencias Ambientales', '5558901236'),
(29, 'Emilio Cordero', 'Metafísica', '5559012347'),
(30, 'Adriana Gutiérrez', 'Antropología', '5550123458'),
(31, 'Javier Ortega', 'Sociología', '5551234570'),
(32, 'Santiago Morales', 'Diseño Gráfico', '5552345671'),
(33, 'Valeria Suárez', 'Arqueología', '5553456782'),
(34, 'Diego Herrera', 'Administración', '5554567893'),
(35, 'Lucía Paredes', 'Marketing', '5555678904'),
(36, 'Fernando Flores', 'Publicidad', '5556789015'),
(37, 'Isabela León', 'Redes Sociales', '5557890126'),
(38, 'Mateo Mendoza', 'Diseño de Videojuegos', '5558901237'),
(39, 'Ricardo Jiménez', 'Narrativa', '5559012348'),
(40, 'Paula Álvarez', 'Guionismo', '5550123459');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `clave_materia` int(11) NOT NULL,
  `nombre_materia` varchar(255) DEFAULT NULL,
  `clave_maestro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`clave_materia`, `nombre_materia`, `clave_maestro`) VALUES
(1, 'Matemáticas', 1),
(2, 'Español', 2),
(3, 'Historia', 3),
(4, 'Biología', 4),
(5, 'Química', 5),
(6, 'Física', 6),
(7, 'Inglés', 7),
(8, 'Geografía', 8),
(9, 'Artes', 9),
(10, 'Educación Física', 10),
(11, 'Música', 11),
(12, 'Computación', 12),
(13, 'Ciencias Sociales', 13),
(14, 'Literatura', 14),
(15, 'Filosofía', 15),
(16, 'Derecho', 16),
(17, 'Psicología', 17),
(18, 'Ética', 18),
(19, 'Economía', 19),
(20, 'Astronomía', 20),
(21, 'Programación', 21),
(22, 'Estadística', 22),
(23, 'Dibujo Técnico', 23),
(24, 'Robótica', 24),
(25, 'Neurociencia', 25),
(26, 'Genética', 26),
(27, 'Fotografía', 27),
(28, 'Ciencias Ambientales', 28),
(29, 'Metafísica', 29),
(30, 'Antropología', 30),
(31, 'Sociología', 31),
(32, 'Diseño Gráfico', 32),
(33, 'Arqueología', 33),
(34, 'Administración', 34),
(35, 'Marketing', 35),
(36, 'Publicidad', 36),
(37, 'Redes Sociales', 37),
(38, 'Diseño de Videojuegos', 38),
(39, 'Narrativa', 39),
(40, 'Guionismo', 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_estudiante`
--

CREATE TABLE `materia_estudiante` (
  `id_materia_estudiante` int(11) NOT NULL,
  `numero_control` int(11) NOT NULL,
  `clave_materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia_estudiante`
--

INSERT INTO `materia_estudiante` (`id_materia_estudiante`, `numero_control`, `clave_materia`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participacion_eventos`
--

CREATE TABLE `participacion_eventos` (
  `id_participacion` int(11) NOT NULL,
  `id_evento` int(11) NOT NULL,
  `numero_control` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `participacion_eventos`
--

INSERT INTO `participacion_eventos` (`id_participacion`, `id_evento`, `numero_control`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidas`
--

CREATE TABLE `salidas` (
  `clave_salida` int(11) NOT NULL,
  `asunto` text DEFAULT NULL,
  `cantidad` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `salidas`
--

INSERT INTO `salidas` (`clave_salida`, `asunto`, `cantidad`) VALUES
(1, 'Compra de material escolar', 4500.00),
(2, 'Pago a proveedores', 7800.00),
(3, 'Mantenimiento de aulas', 9200.00),
(4, 'Compra de mobiliario', 15000.00),
(5, 'Reparación de equipo de cómputo', 5600.00),
(6, 'Pago de servicios básicos', 8800.00),
(7, 'Compra de libros para biblioteca', 6200.00),
(8, 'Pago de transporte escolar', 7100.00),
(9, 'Gastos administrativos', 4800.00),
(10, 'Pago de personal de limpieza', 7500.00),
(11, 'Compra de proyectores', 11000.00),
(12, 'Renovación de laboratorio de ciencias', 13200.00),
(13, 'Pago de internet', 3000.00),
(14, 'Compra de papelería', 4200.00),
(15, 'Mantenimiento de canchas deportivas', 6800.00),
(16, 'Compra de instrumentos musicales', 10500.00),
(17, 'Pago de software educativo', 5400.00),
(18, 'Contratación de conferencistas', 8200.00),
(19, 'Arreglo de áreas verdes', 4100.00),
(20, 'Compra de uniformes para personal', 7200.00),
(21, 'Pago de profesores por horas extras', 9700.00),
(22, 'Mantenimiento del auditorio', 13400.00),
(23, 'Compra de material para talleres', 5600.00),
(24, 'Reparación del techo de la escuela', 12000.00),
(25, 'Pago de seguridad privada', 8900.00),
(26, 'Compra de mesas y sillas', 9400.00),
(27, 'Adquisición de software de gestión escolar', 6700.00),
(28, 'Compra de impresoras', 5800.00),
(29, 'Pago de exámenes de certificación', 7600.00),
(30, 'Reparación de baños', 9500.00),
(31, 'Compra de lockers para estudiantes', 8300.00),
(32, 'Pago de eventos culturales', 6100.00),
(33, 'Instalación de aire acondicionado', 14000.00),
(34, 'Compra de kits de primeros auxilios', 3800.00),
(35, 'Pago de uniformes deportivos', 8700.00),
(36, 'Adquisición de paneles solares', 15500.00),
(37, 'Renovación de laboratorios de informática', 14300.00),
(38, 'Compra de cámaras de seguridad', 12900.00),
(39, 'Pago de mantenimiento eléctrico', 7700.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`id_asistencia`),
  ADD KEY `numero_control` (`numero_control`);

--
-- Indices de la tabla `cafeteria`
--
ALTER TABLE `cafeteria`
  ADD PRIMARY KEY (`producto`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id_calificacion`),
  ADD KEY `numero_control` (`numero_control`),
  ADD KEY `clave_materia` (`clave_materia`);

--
-- Indices de la tabla `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`numero_control`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_evento`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`clave_ingreso`);

--
-- Indices de la tabla `maestro`
--
ALTER TABLE `maestro`
  ADD PRIMARY KEY (`clave_maestro`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`clave_materia`),
  ADD KEY `clave_maestro` (`clave_maestro`);

--
-- Indices de la tabla `materia_estudiante`
--
ALTER TABLE `materia_estudiante`
  ADD PRIMARY KEY (`id_materia_estudiante`),
  ADD KEY `numero_control` (`numero_control`),
  ADD KEY `clave_materia` (`clave_materia`);

--
-- Indices de la tabla `participacion_eventos`
--
ALTER TABLE `participacion_eventos`
  ADD PRIMARY KEY (`id_participacion`),
  ADD KEY `id_evento` (`id_evento`),
  ADD KEY `numero_control` (`numero_control`);

--
-- Indices de la tabla `salidas`
--
ALTER TABLE `salidas`
  ADD PRIMARY KEY (`clave_salida`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `id_asistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `id_calificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `clave_ingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `clave_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `materia_estudiante`
--
ALTER TABLE `materia_estudiante`
  MODIFY `id_materia_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `participacion_eventos`
--
ALTER TABLE `participacion_eventos`
  MODIFY `id_participacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `salidas`
--
ALTER TABLE `salidas`
  MODIFY `clave_salida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`numero_control`) REFERENCES `estudiante` (`numero_control`);

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`numero_control`) REFERENCES `estudiante` (`numero_control`),
  ADD CONSTRAINT `calificaciones_ibfk_2` FOREIGN KEY (`clave_materia`) REFERENCES `materia` (`clave_materia`);

--
-- Filtros para la tabla `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `materia_ibfk_1` FOREIGN KEY (`clave_maestro`) REFERENCES `maestro` (`clave_maestro`);

--
-- Filtros para la tabla `materia_estudiante`
--
ALTER TABLE `materia_estudiante`
  ADD CONSTRAINT `materia_estudiante_ibfk_1` FOREIGN KEY (`numero_control`) REFERENCES `estudiante` (`numero_control`),
  ADD CONSTRAINT `materia_estudiante_ibfk_2` FOREIGN KEY (`clave_materia`) REFERENCES `materia` (`clave_materia`);

--
-- Filtros para la tabla `participacion_eventos`
--
ALTER TABLE `participacion_eventos`
  ADD CONSTRAINT `participacion_eventos_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id_evento`),
  ADD CONSTRAINT `participacion_eventos_ibfk_2` FOREIGN KEY (`numero_control`) REFERENCES `estudiante` (`numero_control`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
