Use sakila;

/*Liste todos los registros y campos de la tabla country*/
SELECT * FROM country;

/*Liste todos los registros y campos de la tabla category*/
SELECT * FROM category;

/*Liste todos los registros y campos de la tabla language*/
SELECT * FROM language;

/*Liste todos los registros y los campos country_id y country de la tabla country*/
SELECT country_id, country FROM country;

/*Liste todos los registros y el campo name de la tabla category*/
SELECT name FROM category;

/*Liste todos los registros y los campos language_id y name de la tabla language*/
SELECT language_id, name FROM language;

/*Liste todos los registros y campos de la tabla country ordenado por last_update de forma descendente*/
SELECT * FROM country ORDER BY last_update DESC;

/*Liste todos los registros y campos de la tabla category name de forma descendente*/
SELECT * FROM category ORDER BY name DESC;

/*Liste todos los registros y campos de la tabla language ordenado por last_update de forma descendente*/
SELECT * FROM language ORDER BY last_update DESC;

/*Liste todos los campos de los registros no duplicados en el campo first_name de la tabla actor*/
SELECT DISTINCT first_name FROM actor;
