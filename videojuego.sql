-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-05-2025 a las 18:24:14
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
-- Base de datos: `videojuego`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id_compra` int(11) NOT NULL,
  `id_jugador` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id_compra`, `id_jugador`, `fecha`, `total`) VALUES
(1, 1, '2025-05-01 10:00:00', 200.00),
(2, 2, '2025-05-01 11:30:00', 180.00),
(3, 3, '2025-05-02 14:15:00', 250.00),
(4, 4, '2025-05-03 16:45:00', 90.00),
(5, 5, '2025-05-04 12:10:00', 120.00),
(6, 6, '2025-05-04 13:50:00', 380.00),
(7, 7, '2025-05-05 15:20:00', 150.00),
(8, 8, '2025-05-06 17:00:00', 180.00),
(9, 9, '2025-05-07 19:30:00', 210.00),
(10, 10, '2025-05-08 21:45:00', 300.00),
(11, 11, '2025-05-08 09:15:00', 60.00),
(12, 12, '2025-05-08 10:30:00', 90.00),
(13, 13, '2025-05-08 11:00:00', 210.00),
(14, 14, '2025-05-08 12:20:00', 400.00),
(15, 15, '2025-05-08 13:10:00', 180.00),
(16, 16, '2025-05-08 14:30:00', 600.00),
(17, 17, '2025-05-08 15:45:00', 90.00),
(18, 18, '2025-05-08 16:50:00', 70.00),
(19, 19, '2025-05-08 17:25:00', 140.00),
(20, 20, '2025-05-08 18:00:00', 300.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `id_compra` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_compra`
--

INSERT INTO `detalle_compra` (`id_compra`, `id_item`, `cantidad`, `precio_unitario`) VALUES
(1, 1, 1, 150.00),
(1, 3, 1, 50.00),
(2, 2, 1, 100.00),
(2, 4, 2, 40.00),
(3, 5, 1, 250.00),
(4, 3, 2, 45.00),
(5, 6, 1, 120.00),
(6, 7, 10, 20.00),
(6, 8, 1, 180.00),
(7, 1, 1, 150.00),
(8, 3, 1, 50.00),
(8, 9, 1, 90.00),
(9, 3, 1, 10.00),
(9, 10, 1, 200.00),
(10, 11, 1, 140.00),
(10, 12, 1, 160.00),
(11, 20, 1, 60.00),
(12, 4, 2, 45.00),
(13, 2, 1, 10.00),
(13, 13, 1, 200.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_jugador` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_jugador`, `id_item`, `cantidad`) VALUES
(1, 1, 1),
(1, 3, 3),
(2, 2, 1),
(2, 4, 2),
(3, 1, 1),
(3, 5, 1),
(4, 3, 2),
(4, 6, 1),
(5, 2, 1),
(5, 3, 1),
(6, 7, 10),
(6, 8, 1),
(7, 1, 1),
(7, 5, 1),
(8, 3, 1),
(8, 4, 1),
(9, 2, 1),
(9, 9, 1),
(10, 3, 2),
(10, 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE `item` (
  `id_item` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `item`
--

INSERT INTO `item` (`id_item`, `nombre`, `precio`) VALUES
(1, 'espada', 150.00),
(2, 'escudo', 100.00),
(3, 'poción de vida', 50.00),
(4, 'poción de maná', 40.00),
(5, 'armadura', 250.00),
(6, 'arco', 130.00),
(7, 'flechas', 20.00),
(8, 'anillo mágico', 300.00),
(9, 'botas ligeras', 90.00),
(10, 'capa invisible', 500.00),
(11, 'martillo', 140.00),
(12, 'casco', 120.00),
(13, 'guantes de poder', 200.00),
(14, 'libro de hechizos', 400.00),
(15, 'báculo', 350.00),
(16, 'amuletos', 80.00),
(17, 'espada de fuego', 600.00),
(18, 'llave mágica', 70.00),
(19, 'piedra de invocación', 220.00),
(20, 'mochila', 60.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `id_jugador` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `experiencia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`id_jugador`, `nombre`, `nivel`, `experiencia`) VALUES
(1, 'alex', 3, 150),
(2, 'maria', 5, 420),
(3, 'juan', 2, 90),
(4, 'lucia', 6, 600),
(5, 'pedro', 1, 20),
(6, 'ana', 4, 310),
(7, 'david', 7, 740),
(8, 'sofia', 2, 85),
(9, 'carlos', 3, 180),
(10, 'laura', 5, 450),
(11, 'andres', 1, 10),
(12, 'valentina', 2, 95),
(13, 'roberto', 4, 320),
(14, 'camila', 3, 200),
(15, 'sergio', 5, 430),
(16, 'martina', 6, 620),
(17, 'leo', 4, 390),
(18, 'elena', 2, 80),
(19, 'gonzalo', 3, 160),
(20, 'isabel', 1, 15);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_jugador` (`id_jugador`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`id_compra`,`id_item`),
  ADD KEY `id_item` (`id_item`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_jugador`,`id_item`),
  ADD KEY `id_item` (`id_item`);

--
-- Indices de la tabla `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`id_jugador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `item`
--
ALTER TABLE `item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `jugador`
--
ALTER TABLE `jugador`
  MODIFY `id_jugador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_jugador`) REFERENCES `jugador` (`id_jugador`);

--
-- Filtros para la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD CONSTRAINT `detalle_compra_ibfk_1` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id_compra`),
  ADD CONSTRAINT `detalle_compra_ibfk_2` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_jugador`) REFERENCES `jugador` (`id_jugador`),
  ADD CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
