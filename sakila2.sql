/*Crear la base de datos*/
CREATE DATABASE sakila2;

/*Usar la base de datos creada anteriormente*/
USE sakila2;

/*Crear una tabla en la db creada*/
CREATE TABLE prueba (
id_usuario int(10),
nombre varchar(30) NOT NULL,
edad int(3) NOT NULL,
PRIMARY KEY (id_usuario)
);