USE productos_prueba;

/* 1. Mostrar nombre y rango_precio */
SELECT nombre,
       CASE 
         WHEN precio < 100 THEN 'Económico'
         WHEN precio BETWEEN 100 AND 500 THEN 'Moderado'
         ELSE 'Caro'
       END AS rango_precio
FROM productos;

/* 2. Mostrar nombre y disponibilidad */
SELECT nombre,
       CASE
         WHEN stock = 0 THEN 'Sin Stock'
         WHEN stock < 20 THEN 'Bajo Stock'
         ELSE 'Disponible'
       END AS disponibilidad
FROM productos;

/* 3. Agregar columna calculada descuento */
SELECT nombre,
       precio,
       CASE 
         WHEN precio > 1000 THEN precio * 0.10
         WHEN precio BETWEEN 500 AND 1000 THEN precio * 0.05
         ELSE 0
       END AS descuento
FROM productos;

/* 4. Actualizar columna stock_status */
UPDATE productos
SET stock_status = CASE 
    WHEN stock = 0 THEN 'Sin Stock'
    WHEN stock < 20 THEN 'Bajo'
    ELSE 'Disponible'
END;

/* 5. Actualizar la categoría según el precio */
UPDATE productos
SET categoria = CASE 
    WHEN precio > 1000 THEN 'Alta Gama'
    WHEN precio BETWEEN 500 AND 1000 THEN 'Gama Media'
    ELSE 'Gama Baja'
END;

/* 6. Ordenar por disponibilidad */
SELECT nombre, stock,
       CASE
         WHEN stock = 0 THEN 'Sin Stock'
         WHEN stock < 20 THEN 'Bajo Stock'
         ELSE 'Disponible'
       END AS disponibilidad
FROM productos
ORDER BY FIELD(
    CASE
        WHEN stock = 0 THEN 'Sin Stock'
        WHEN stock < 20 THEN 'Bajo Stock'
        ELSE 'Disponible'
    END, 'Sin Stock', 'Bajo Stock', 'Disponible'
);

/* 7. Ordenar por rango de precio */
SELECT nombre, precio,
       CASE
         WHEN precio > 1000 THEN 'Caro'
         WHEN precio BETWEEN 500 AND 1000 THEN 'Moderado'
         ELSE 'Económico'
       END AS rango_precio
FROM productos
ORDER BY FIELD(
    CASE
        WHEN precio > 1000 THEN 'Caro'
        WHEN precio BETWEEN 500 AND 1000 THEN 'Moderado'
        ELSE 'Económico'
    END, 'Caro', 'Moderado', 'Económico'
);

/* 8. Columna oferta_especial */
SELECT nombre, categoria, stock,
       CASE 
         WHEN categoria = 'Muebles' AND stock < 10 THEN 'Sí'
         ELSE 'No'
       END AS oferta_especial
FROM productos;