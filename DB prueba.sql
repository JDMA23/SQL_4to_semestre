CREATE SCHEMA `productos_prueba`;
USE productos_prueba;

CREATE TABLE productos (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    categoría VARCHAR(50),
    precio DECIMAL(10, 2),
    stock INT
);

INSERT INTO productos (id, nombre, categoría, precio, stock) VALUES
(1, 'Laptop', 'Tecnología', 1500.00, 10),
(2, 'Mouse', 'Tecnología', 25.00, 100),
(3, 'Teclado', 'Tecnología', 50.00, 60),
(4, 'Monitor', 'Tecnología', 300.00, 20),
(5, 'Silla', 'Muebles', 120.00, 15),
(6, 'Escritorio', 'Muebles', 250.00, 5),
(7, 'Cámara web', 40.00, 30),
(8, 'Impresora', 120.00, 15),
(9, 'Altavoces', 60.00, 40),
(10, 'Batería externa', 20.00, 80),
(11, 'Cable HDMI', 10.00, 200),
(12, 'Tarjeta gráfica', 400.00, 25),
(13, 'Silla ergonómica', 150.00, 10),
(14, 'Teclado mecánico', 100.00, 15),
(15, 'Micrófono USB', 50.00, 20),
(16, 'Smartphone', 720.00, 30),
(17, 'Tablet', 250.00, 40),
(18, 'Smartwatch', 120.00, 45),
(19, 'Cargador portátil', 15.00, 15),
(20, 'Router WiFi', 80.00, 60);

SET SQL_SAFE_UPDATES = 0;
