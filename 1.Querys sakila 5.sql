USE sakila;

/* Calcularemos el porcentaje de comisión del mes de mayo del empleado con id=2 aplicando un 10% al monto de las rentas */
SELECT staff_id, rental_id, amount, 
       amount * 0.10 AS comision
FROM payment
WHERE staff_id = 2 AND MONTH(payment_date) = 5;

/* Calcularemos el porcentaje de comisión del mes de Junio del empleado con id=1 aplicando un 10% al monto de las rentas */
SELECT staff_id, rental_id, amount, 
       amount * 0.10 AS comision
FROM payment
WHERE staff_id = 1 AND MONTH(payment_date) = 6;

/* El día 30 de mayo se agrega 1 dólar a la comisión de todos los empleados (comisión del 10%), mostrar listado sin superar el 50% del monto */
SELECT rental_id, staff_id, amount,
       LEAST(amount * 0.10 + 1, amount * 0.50) AS comision_final
FROM payment
WHERE DAY(payment_date) = 30 AND MONTH(payment_date) = 5;

/* Descuento del 20% a clientes que rentaron el 30 o 31 de cualquier mes */
SELECT customer_id, rental_id, amount,
       amount * 0.20 AS descuento,
       amount - (amount * 0.20) AS total_a_pagar
FROM payment
WHERE DAY(payment_date) IN (30, 31);

/* A los clientes que rentan los lunes se les otorga un día más de devolución (3 días después del pago) */
SELECT customer_id, rental_id, payment_date,
       DATE_ADD(payment_date, INTERVAL 3 DAY) AS fecha_entrega
FROM payment
WHERE DAYOFWEEK(payment_date) = 2; -- 2 = Lunes

/* Calcular días transcurridos entre fecha de regreso y fecha de renta */
SELECT rental_id, return_date, rental_date,
       DATEDIFF(return_date, rental_date) AS dias_transcurridos
FROM rental;

/* Lista de rentas hechas los días domingo */
SELECT rental_id, customer_id, rental_date
FROM rental
WHERE DAYOFWEEK(rental_date) = 1; -- 1 = Domingo

/* Lista de rentas hechas los días domingo del mes de mayo */
SELECT rental_id, customer_id, rental_date
FROM rental
WHERE DAYOFWEEK(rental_date) = 1 AND MONTH(rental_date) = 5;

/* Lista de rentas devueltas los domingos del mes de junio */
SELECT rental_id, customer_id, rental_date, return_date
FROM rental
WHERE DAYOFWEEK(return_date) = 1 AND MONTH(return_date) = 6;
