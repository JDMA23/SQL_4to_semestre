USE tienda_departamental;

-- MIN
SELECT MIN(precio) AS precio_minimo FROM articulo;
SELECT MIN(edad) AS edad_minima FROM cliente;
SELECT MIN(existencia) AS existencia_minima FROM articulo;

--  MAX
SELECT MAX(precio) AS precio_maximo FROM articulo;
SELECT MAX(edad) AS edad_maxima FROM cliente;
SELECT MAX(existencia) AS existencia_maxima FROM articulo;

-- COUNT
SELECT COUNT(*) AS total_clientes FROM cliente;
SELECT COUNT(*) AS total_articulos FROM articulo;
SELECT COUNT(*) AS total_proveedores FROM proveedor;

--  SUM
SELECT SUM(precio) AS suma_precios FROM articulo;
SELECT SUM(existencia) AS total_existencias FROM articulo;
SELECT SUM(total_venta) AS total_ventas FROM ventas;

--  AVG
SELECT AVG(precio) AS precio_promedio FROM articulo;
SELECT AVG(edad) AS edad_promedio FROM cliente;
SELECT AVG(existencia) AS existencia_promedio FROM articulo;

--  CONCAT
SELECT CONCAT(nombre, ' - ', direccion) AS cliente_info FROM cliente;
SELECT CONCAT(nombre, ' cuesta $', precio) AS articulo_info FROM articulo;
SELECT CONCAT(nombre, ' - ', direccion) AS proveedor_info FROM proveedor;

--  UPPER
SELECT UPPER(nombre) AS nombre_mayusculas FROM cliente;
SELECT UPPER(nombre) AS articulo_mayusculas FROM articulo;
SELECT UPPER(direccion) AS direccion_mayusculas FROM proveedor;

--  LOWER
SELECT LOWER(nombre) AS nombre_minusculas FROM cliente;
SELECT LOWER(nombre) AS articulo_minusculas FROM articulo;
SELECT LOWER(direccion) AS direccion_minusculas FROM proveedor;

-- OFFSET
SELECT * FROM cliente LIMIT 3 OFFSET 3;
SELECT * FROM articulo LIMIT 5 OFFSET 5;
SELECT * FROM proveedor LIMIT 2 OFFSET 2;

-- GROUP BY
SELECT ciudad, COUNT(*) AS total_clientes FROM cliente GROUP BY ciudad;
SELECT categoria, COUNT(*) AS total_articulos FROM articulo GROUP BY categoria;
SELECT clave_vendedor, SUM(total_venta) AS ventas_totales FROM ventas GROUP BY clave_vendedor;

--  HAVING
SELECT clave_departamento, COUNT(*) AS total_articulos 
FROM articulo 
GROUP BY clave_departamento 
HAVING total_articulos > 2;

SELECT clave_marca, AVG(precio) AS precio_promedio 
FROM articulo 
GROUP BY clave_marca 
HAVING precio_promedio > 500;

SELECT clave_cliente, SUM(ganancias) AS total_ganancias 
FROM ventas 
GROUP BY clave_cliente 
HAVING total_ganancias > 5000;

--  CASE
SELECT nombre, precio, 
       CASE 
           WHEN precio < 100 THEN 'Barato' 
           WHEN precio BETWEEN 100 AND 500 THEN 'Económico' 
           ELSE 'Caro' 
       END AS categoria_precio 
FROM articulo;

SELECT c.nombre, SUM(v.ganancias) AS total_compras, 
       CASE 
           WHEN SUM(v.ganancias) > 10000 THEN 'Cliente VIP' 
           WHEN SUM(v.ganancias) BETWEEN 5000 AND 10000 THEN 'Frecuente' 
           ELSE 'Ocasional' 
       END AS tipo_cliente 
FROM ventas v 
JOIN cliente c ON v.clave_cliente = c.clave_cliente 
GROUP BY c.nombre;

SELECT nombre, existencia, 
       CASE 
           WHEN existencia = 0 THEN 'Agotado' 
           WHEN existencia < 10 THEN 'Baja Existencia' 
           ELSE 'Stock Suficiente' 
       END AS estado_stock 
FROM articulo;

--  IFNULL
SELECT nombre, IFNULL(descripcion, 'Sin descripción') AS descripcion_real 
FROM articulo;

SELECT c.nombre, IFNULL(SUM(v.ganancias), 0) AS total_ganancias 
FROM cliente c 
LEFT JOIN ventas v ON c.clave_cliente = v.clave_cliente 
GROUP BY c.nombre;

SELECT producto, IFNULL(direccion, 'Dirección desconocida') AS direccion_real 
FROM proveedor;
