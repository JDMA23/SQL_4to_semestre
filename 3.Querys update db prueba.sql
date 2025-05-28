/* 1. Actualizar el precio del producto "Silla" a 130.00 */
UPDATE productos SET precio = 130.00 WHERE nombre = 'Silla';

/* 2. Incrementar en un 10% el precio de todos los productos de la categoría "Tecnología" */
UPDATE productos SET precio = precio * 1.10 WHERE categoría = 'Tecnología';

/* 3. Aumentar el stock de todos los productos con stock menor o igual a 10 en 5 unidades */
UPDATE productos SET stock = stock + 5 WHERE stock <= 10;

/* 4. Cambiar el nombre del producto con id = 6 a "Escritorio de Madera" */
UPDATE productos SET nombre = 'Escritorio de Madera' WHERE id = 6;

/* 5. Reducir en un 5% el precio de los productos cuyo precio sea mayor a 500 */
UPDATE productos SET precio = precio * 0.95 WHERE precio > 500;

/* 6. Actualizar la categoría del producto "Monitor" a "Electrónica" */
UPDATE productos SET categoría = 'Electrónica' WHERE nombre = 'Monitor';

/* 7. Establecer el stock en 0 para todos los productos con un precio inferior a 30 */
UPDATE productos SET stock = 0 WHERE precio < 30;

/* 8. Eliminar el producto con el nombre "Mouse" */
DELETE FROM productos WHERE nombre = 'Mouse';

/* 9. Eliminar todos los productos cuya categoría sea "Muebles" y cuyo stock sea menor a 10 */
DELETE FROM productos WHERE categoría = 'Muebles' AND stock < 10;

/* 10. Eliminar los productos cuyo precio sea mayor a 1000 */
DELETE FROM productos WHERE precio > 1000;

/* 11. Eliminar el producto con id igual a 4 */
DELETE FROM productos WHERE id = 4;

/* 12. Eliminar todos los productos que tengan un stock igual a 0 */
DELETE FROM productos WHERE stock = 0;

/* 13. Actualiza el precio de todos los productos de la categoría "Tecnología" en un 15%, pero solo si su precio actual es menor a 1000 */
UPDATE productos SET precio = precio * 1.15 WHERE categoría = 'Tecnología' AND precio < 1000;

/* 14. Elimina todos los productos cuyo stock sea menor al promedio del stock de todos los productos */
DELETE FROM productos 
WHERE stock < (SELECT AVG(stock) FROM (SELECT stock FROM productos) AS temp);

/* 15. Cambia el nombre de todos los productos de la categoría "Muebles" agregando la palabra "Deluxe" al final del nombre */
UPDATE productos 
SET nombre = CONCAT(nombre, ' Deluxe') 
WHERE categoría = 'Muebles';
