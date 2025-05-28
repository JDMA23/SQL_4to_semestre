-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-05-2025 a las 18:24:09
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
-- Base de datos: `tienda_departamental`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `clave_articulo` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `existencia` int(11) DEFAULT NULL,
  `clave_departamento` int(11) DEFAULT NULL,
  `clave_marca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`clave_articulo`, `nombre`, `descripcion`, `precio`, `existencia`, `clave_departamento`, `clave_marca`) VALUES
(1, 'Producto 1', 'Descripción del producto 1', 104.99, 51, 1, 1),
(2, 'Producto 2', 'Descripción del producto 2', 109.99, 52, 2, 2),
(3, 'Producto 3', 'Descripción del producto 3', 114.99, 53, 3, 3),
(4, 'Producto 4', 'Descripción del producto 4', 119.99, 54, 4, 4),
(5, 'Producto 5', 'Descripción del producto 5', 124.99, 55, 5, 5),
(6, 'Producto 6', 'Descripción del producto 6', 129.99, 56, 6, 6),
(7, 'Producto 7', 'Descripción del producto 7', 134.99, 57, 7, 7),
(8, 'Producto 8', 'Descripción del producto 8', 139.99, 58, 8, 8),
(9, 'Producto 9', 'Descripción del producto 9', 144.99, 59, 9, 9),
(10, 'Producto 10', 'Descripción del producto 10', 149.99, 60, 10, 10),
(11, 'Producto 11', 'Descripción del producto 11', 154.99, 61, 11, 11),
(12, 'Producto 12', 'Descripción del producto 12', 159.99, 62, 12, 12),
(13, 'Producto 13', 'Descripción del producto 13', 164.99, 63, 13, 13),
(14, 'Producto 14', 'Descripción del producto 14', 169.99, 64, 14, 14),
(15, 'Producto 15', 'Descripción del producto 15', 174.99, 65, 15, 15),
(16, 'Producto 16', 'Descripción del producto 16', 179.99, 66, 16, 16),
(17, 'Producto 17', 'Descripción del producto 17', 184.99, 67, 17, 17),
(18, 'Producto 18', 'Descripción del producto 18', 189.99, 68, 18, 18),
(19, 'Producto 19', 'Descripción del producto 19', 194.99, 69, 19, 19),
(20, 'Producto 20', 'Descripción del producto 20', 199.99, 70, 20, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `correo`, `telefono`) VALUES
(1, 'Cliente 1', 'cliente1@correo.com', '5550000001'),
(2, 'Cliente 2', 'cliente2@correo.com', '5550000002'),
(3, 'Cliente 3', 'cliente3@correo.com', '5550000003'),
(4, 'Cliente 4', 'cliente4@correo.com', '5550000004'),
(5, 'Cliente 5', 'cliente5@correo.com', '5550000005'),
(6, 'Cliente 6', 'cliente6@correo.com', '5550000006'),
(7, 'Cliente 7', 'cliente7@correo.com', '5550000007'),
(8, 'Cliente 8', 'cliente8@correo.com', '5550000008'),
(9, 'Cliente 9', 'cliente9@correo.com', '5550000009'),
(10, 'Cliente 10', 'cliente10@correo.com', '5550000010'),
(11, 'Cliente 11', 'cliente11@correo.com', '5550000011'),
(12, 'Cliente 12', 'cliente12@correo.com', '5550000012'),
(13, 'Cliente 13', 'cliente13@correo.com', '5550000013'),
(14, 'Cliente 14', 'cliente14@correo.com', '5550000014'),
(15, 'Cliente 15', 'cliente15@correo.com', '5550000015'),
(16, 'Cliente 16', 'cliente16@correo.com', '5550000016'),
(17, 'Cliente 17', 'cliente17@correo.com', '5550000017'),
(18, 'Cliente 18', 'cliente18@correo.com', '5550000018'),
(19, 'Cliente 19', 'cliente19@correo.com', '5550000019'),
(20, 'Cliente 20', 'cliente20@correo.com', '5550000020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `clave_departamento` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`clave_departamento`, `nombre`) VALUES
(1, 'Electrónica'),
(2, 'Ropa Deportiva'),
(3, 'Hogar'),
(4, 'Jardinería'),
(5, 'Juguetería'),
(6, 'Papelería'),
(7, 'Automotriz'),
(8, 'Electrodomésticos'),
(9, 'Cuidado Personal'),
(10, 'Mascotas'),
(11, 'Libros'),
(12, 'Relojería'),
(13, 'Oficina'),
(14, 'Iluminación'),
(15, 'Seguridad'),
(16, 'Computación'),
(17, 'Calzado'),
(18, 'Decoración'),
(19, 'Herramientas'),
(20, 'Cocina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_detalle` int(11) NOT NULL,
  `id_venta` int(11) DEFAULT NULL,
  `clave_articulo` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id_detalle`, `id_venta`, `clave_articulo`, `cantidad`, `precio_unitario`) VALUES
(1, 1, 1, 2, 209.99),
(2, 2, 2, 3, 219.99),
(3, 3, 3, 4, 229.99),
(4, 4, 4, 5, 239.99),
(5, 5, 5, 1, 249.99),
(6, 6, 6, 2, 259.99),
(7, 7, 7, 3, 269.99),
(8, 8, 8, 4, 279.99),
(9, 9, 9, 5, 289.99),
(10, 10, 10, 1, 299.99),
(11, 11, 11, 2, 309.99),
(12, 12, 12, 3, 319.99),
(13, 13, 13, 4, 329.99),
(14, 14, 14, 5, 339.99),
(15, 15, 15, 1, 349.99),
(16, 16, 16, 2, 359.99),
(17, 17, 17, 3, 369.99),
(18, 18, 18, 4, 379.99),
(19, 19, 19, 5, 389.99),
(20, 20, 20, 1, 399.99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `nombre`, `puesto`) VALUES
(1, 'Empleado 1', 'Vendedor'),
(2, 'Empleado 2', 'Vendedor'),
(3, 'Empleado 3', 'Vendedor'),
(4, 'Empleado 4', 'Vendedor'),
(5, 'Empleado 5', 'Vendedor'),
(6, 'Empleado 6', 'Vendedor'),
(7, 'Empleado 7', 'Vendedor'),
(8, 'Empleado 8', 'Vendedor'),
(9, 'Empleado 9', 'Vendedor'),
(10, 'Empleado 10', 'Vendedor'),
(11, 'Empleado 11', 'Vendedor'),
(12, 'Empleado 12', 'Vendedor'),
(13, 'Empleado 13', 'Vendedor'),
(14, 'Empleado 14', 'Vendedor'),
(15, 'Empleado 15', 'Vendedor'),
(16, 'Empleado 16', 'Vendedor'),
(17, 'Empleado 17', 'Vendedor'),
(18, 'Empleado 18', 'Vendedor'),
(19, 'Empleado 19', 'Vendedor'),
(20, 'Empleado 20', 'Vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_inventario` int(11) NOT NULL,
  `id_sucursal` int(11) DEFAULT NULL,
  `clave_articulo` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_inventario`, `id_sucursal`, `clave_articulo`, `stock`) VALUES
(1, 1, 1, 51),
(2, 2, 2, 52),
(3, 3, 3, 53),
(4, 4, 4, 54),
(5, 5, 5, 55),
(6, 6, 6, 56),
(7, 7, 7, 57),
(8, 8, 8, 58),
(9, 9, 9, 59),
(10, 10, 10, 60),
(11, 11, 11, 61),
(12, 12, 12, 62),
(13, 13, 13, 63),
(14, 14, 14, 64),
(15, 15, 15, 65),
(16, 16, 16, 66),
(17, 17, 17, 67),
(18, 18, 18, 68),
(19, 19, 19, 69),
(20, 20, 20, 70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE `item` (
  `id_item` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `clave_marca` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`clave_marca`, `nombre`) VALUES
(1, 'Samsung'),
(2, 'Nike'),
(3, 'Trek'),
(4, 'Asus'),
(5, 'Whirlpool'),
(6, 'Hugo Boss'),
(7, 'Clarks'),
(8, 'DXRacer'),
(9, 'Black & Decker'),
(10, 'T-fal'),
(11, 'Xiaomi'),
(12, 'Ray-Ban'),
(13, 'Adidas'),
(14, 'LG'),
(15, 'Samsonite'),
(16, 'Apple'),
(17, 'Fitbit'),
(18, 'DeLonghi'),
(19, 'Lego'),
(20, 'Seiko');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre`, `telefono`) VALUES
(1, 'Proveedor 1', '5551000001'),
(2, 'Proveedor 2', '5551000002'),
(3, 'Proveedor 3', '5551000003'),
(4, 'Proveedor 4', '5551000004'),
(5, 'Proveedor 5', '5551000005'),
(6, 'Proveedor 6', '5551000006'),
(7, 'Proveedor 7', '5551000007'),
(8, 'Proveedor 8', '5551000008'),
(9, 'Proveedor 9', '5551000009'),
(10, 'Proveedor 10', '5551000010'),
(11, 'Proveedor 11', '5551000011'),
(12, 'Proveedor 12', '5551000012'),
(13, 'Proveedor 13', '5551000013'),
(14, 'Proveedor 14', '5551000014'),
(15, 'Proveedor 15', '5551000015'),
(16, 'Proveedor 16', '5551000016'),
(17, 'Proveedor 17', '5551000017'),
(18, 'Proveedor 18', '5551000018'),
(19, 'Proveedor 19', '5551000019'),
(20, 'Proveedor 20', '5551000020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id_sucursal` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`id_sucursal`, `nombre`, `direccion`) VALUES
(1, 'Sucursal 1', 'Dirección #1'),
(2, 'Sucursal 2', 'Dirección #2'),
(3, 'Sucursal 3', 'Dirección #3'),
(4, 'Sucursal 4', 'Dirección #4'),
(5, 'Sucursal 5', 'Dirección #5'),
(6, 'Sucursal 6', 'Dirección #6'),
(7, 'Sucursal 7', 'Dirección #7'),
(8, 'Sucursal 8', 'Dirección #8'),
(9, 'Sucursal 9', 'Dirección #9'),
(10, 'Sucursal 10', 'Dirección #10'),
(11, 'Sucursal 11', 'Dirección #11'),
(12, 'Sucursal 12', 'Dirección #12'),
(13, 'Sucursal 13', 'Dirección #13'),
(14, 'Sucursal 14', 'Dirección #14'),
(15, 'Sucursal 15', 'Dirección #15'),
(16, 'Sucursal 16', 'Dirección #16'),
(17, 'Sucursal 17', 'Dirección #17'),
(18, 'Sucursal 18', 'Dirección #18'),
(19, 'Sucursal 19', 'Dirección #19'),
(20, 'Sucursal 20', 'Dirección #20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `id_cliente`, `id_empleado`, `id_sucursal`, `fecha`, `total`) VALUES
(1, 1, 1, 1, '2025-05-01', 1050.00),
(2, 2, 2, 2, '2025-05-02', 1100.00),
(3, 3, 3, 3, '2025-05-03', 1150.00),
(4, 4, 4, 4, '2025-05-04', 1200.00),
(5, 5, 5, 5, '2025-05-05', 1250.00),
(6, 6, 6, 6, '2025-05-06', 1300.00),
(7, 7, 7, 7, '2025-05-07', 1350.00),
(8, 8, 8, 8, '2025-05-08', 1400.00),
(9, 9, 9, 9, '2025-05-09', 1450.00),
(10, 10, 10, 10, '2025-05-10', 1500.00),
(11, 11, 11, 11, '2025-05-11', 1550.00),
(12, 12, 12, 12, '2025-05-12', 1600.00),
(13, 13, 13, 13, '2025-05-13', 1650.00),
(14, 14, 14, 14, '2025-05-14', 1700.00),
(15, 15, 15, 15, '2025-05-15', 1750.00),
(16, 16, 16, 16, '2025-05-16', 1800.00),
(17, 17, 17, 17, '2025-05-17', 1850.00),
(18, 18, 18, 18, '2025-05-18', 1900.00),
(19, 19, 19, 19, '2025-05-19', 1950.00),
(20, 20, 20, 20, '2025-05-20', 2000.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`clave_articulo`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`clave_departamento`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `clave_articulo` (`clave_articulo`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_inventario`),
  ADD KEY `id_sucursal` (`id_sucursal`),
  ADD KEY `clave_articulo` (`clave_articulo`);

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
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`clave_marca`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id_sucursal`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_empleado` (`id_empleado`),
  ADD KEY `id_sucursal` (`id_sucursal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `item`
--
ALTER TABLE `item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jugador`
--
ALTER TABLE `jugador`
  MODIFY `id_jugador` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`),
  ADD CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`clave_articulo`) REFERENCES `articulo` (`clave_articulo`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`),
  ADD CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`clave_articulo`) REFERENCES `articulo` (`clave_articulo`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
