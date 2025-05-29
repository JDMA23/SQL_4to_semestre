SET SQL_SAFE_UPDATES = 0;
USE tienda_departamental;

DELIMITER $$
CREATE TRIGGER reducir_existencia_al_cambiar_precio
BEFORE UPDATE ON articulo
FOR EACH ROW
BEGIN
    IF OLD.precio <> NEW.precio THEN
        SET NEW.existencia = OLD.existencia - 1;
    END IF;
END$$
DELIMITER ;
UPDATE articulo SET precio = 199.99 WHERE clave_articulo = 1;
SELECT clave_articulo, precio, existencia FROM articulo WHERE clave_articulo = 1;

USE videojuego;
DELIMITER $$
CREATE TRIGGER subir_nivel_por_compra
AFTER INSERT ON compra
FOR EACH ROW
BEGIN
    UPDATE jugador
    SET nivel = nivel + 1
    WHERE id_jugador = NEW.id_jugador;
END$$
DELIMITER ;
INSERT INTO compra (id_jugador, total) VALUES (1, 100.00);
SELECT id_jugador, nivel FROM jugador WHERE id_jugador = 1;

USE escuela;
DELIMITER $$
CREATE TRIGGER marcar_aula_por_cambio_de_grupo
BEFORE UPDATE ON estudiante
FOR EACH ROW
BEGIN
    IF OLD.grupo <> NEW.grupo THEN
        SET NEW.aula = 'CAMBIO';
    END IF;
END$$
DELIMITER ;
UPDATE estudiante SET grupo = 'Z' WHERE numero_control = 1;
SELECT numero_control, grupo, aula FROM estudiante WHERE numero_control = 1;

USE liga_futbol;
DELIMITER $$
CREATE TRIGGER aumentar_partido_si_cambia_goles
BEFORE UPDATE ON jugador
FOR EACH ROW
BEGIN
    IF OLD.goles <> NEW.goles THEN
        SET NEW.partidos_jugados = OLD.partidos_jugados + 1;
    END IF;
END$$
DELIMITER ;
UPDATE jugador SET goles = 3 WHERE numero_jugador = 1;
SELECT * FROM jugador WHERE numero_jugador = 1;



