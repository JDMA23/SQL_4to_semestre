use sakila;
SET SQL_SAFE_UPDATES = 0;


/*1. Actualizar last_update de customer cuando se actualice su dirección
    Crea un trigger que actualice el campo last_update de la tabla customer
    cuando se modifique su address_id.
*/
DELIMITER $$
CREATE TRIGGER actualizar_lastupdate_al_modificar_address
BEFORE UPDATE ON customer
FOR EACH ROW
BEGIN
    IF OLD.address_id <> NEW.address_id THEN
        SET NEW.last_update = NOW();
    END IF;
END$$
DELIMITER ;
UPDATE customer SET address_id = 6 WHERE customer_id = 1;
SELECT customer_id, address_id, last_update FROM customer WHERE customer_id = 1;


/*2. Actualizar last_update de rental al insertar un payment
Cuando se inserte un pago, actualiza el campo last_update del rental asociado.
*/
DELIMITER $$
CREATE TRIGGER actualizar_lastupdate_al_insertar
AFTER INSERT ON payment
FOR EACH ROW
BEGIN
    IF NEW.rental_id IS NOT NULL THEN
        UPDATE rental
        SET last_update = NOW()
        WHERE rental_id = NEW.rental_id;
    END IF;
END$$
DELIMITER ;
INSERT INTO payment (customer_id, staff_id, rental_id, amount, payment_date)
VALUES (1, 1, 1, 5.99, NOW());
SELECT rental_id, last_update FROM rental WHERE rental_id = 1;


/*3. Actualizar last_update de la tabla inventory al actualizar film_id
Cuando se actualice el film_id de un inventario, actualiza su campo last_update.
*/
DELIMITER $$
CREATE TRIGGER actualizar_lastupdate_al_actualizar_filmid
BEFORE UPDATE ON inventory
FOR EACH ROW
BEGIN
    IF OLD.film_id <> NEW.film_id THEN
        SET NEW.last_update = NOW();
    END IF;
END$$
DELIMITER ;
UPDATE inventory SET film_id = 2 WHERE inventory_id = 1;
SELECT inventory_id, film_id, last_update FROM inventory WHERE inventory_id = 1;


/*4. Actualizar last_update de la tabla staff cuando se modifique su nombre
Cuando se actualice el first_name o last_name de un empleado (staff), 
también debe actualizarse el campo last_update.
*/
DELIMITER $$
CREATE TRIGGER actualizar_lastupdate_almodificar_name
BEFORE UPDATE ON staff
FOR EACH ROW
BEGIN
    IF OLD.first_name <> NEW.first_name OR OLD.last_name <> NEW.last_name THEN
        SET NEW.last_update = NOW();
    END IF;
END$$
DELIMITER ;
UPDATE staff SET first_name = 'Marco' WHERE staff_id = 1;
SELECT staff_id, first_name, last_name, last_update FROM staff WHERE staff_id = 1;






