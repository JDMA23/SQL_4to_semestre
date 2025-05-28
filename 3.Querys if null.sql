USE productos_prueba;

/* Mostrar todos los productos y su stock (0 si es NULL) */
SELECT nombre, IFNULL(stock, 0) AS stock_real
FROM productos_null;

/* Mostrar nombre y precio_final considerando descuento */
SELECT nombre, precio, IFNULL(descuento, 0) AS descuento,
       precio - IFNULL(descuento, 0) AS precio_final
FROM productos_null;

/* Mostrar nombre y categoria_segura */
SELECT nombre, IFNULL(categoria, 'Desconocida') AS categoria_segura
FROM productos_null;

/* Actualizar stock NULL a 0 */
UPDATE productos_null
SET stock = 0
WHERE stock IS NULL;

/* Actualizar descuento NULL a 0 */
UPDATE productos_null
SET descuento = 0
WHERE descuento IS NULL;

/* Mostrar todos los productos ordenados por stock (NULL como 0) */
SELECT nombre, IFNULL(stock, 0) AS stock_ordenado
FROM productos_null
ORDER BY stock_ordenado ASC;
