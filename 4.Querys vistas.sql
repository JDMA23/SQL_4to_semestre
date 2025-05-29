use sakila;

create view vista_peliculas_categorias as
select f.title, c.name 
from film f
join film_category fc on f.film_id = fc.film_id
join category c on fc.category_id = c.category_id;
select * from vista_peliculas_categorias;

create view vista_peliculas_idioma as
select f.film_id, f.title, l.name as language 
from film f
left join language l on f.language_id = l.language_id;
select * from vista_peliculas_idioma;

create view vista_categorias_conteo_peliculas as
select c.name as category, count(fc.film_id) as films 
from category c
left join film_category fc on c.category_id = fc.category_id
group by c.category_id, c.name
order by films desc;
select * from vista_categorias_conteo_peliculas;

create view vista_clientes_pago_total as
select concat(c.first_name, ' ', c.last_name) as customer_name,
       sum(p.amount) as pago_total
from customer c
left join payment p on c.customer_id = p.customer_id
group by c.customer_id, c.first_name, c.last_name
order by pago_total desc;
select * from vista_clientes_pago_total;

create view vista_direcciones_tiendas as
select a.address, s.store_id
from address a
left join store s on a.address_id = s.address_id;
select * from vista_direcciones_tiendas;

create view vista_rentas_peliculas as
select r.rental_date, f.title 
from rental r
join inventory i on r.inventory_id = i.inventory_id
join film f on i.film_id = f.film_id;
select * from vista_rentas_peliculas;

create view vista_empleados_tienda as
select first_name, last_name, store_id 
from staff;
select * from vista_empleados_tienda;

create view vista_ciudades_conteo_clientes as
select ci.city, count(cu.customer_id) as customer_count 
from city ci
left join address a on ci.city_id = a.city_id
left join customer cu on a.address_id = cu.address_id
group by ci.city_id, ci.city;
select * from vista_ciudades_conteo_clientes;

create view vista_clientes_peliculas_rentadas as
select concat(c.first_name, ' ', c.last_name) as cliente, f.title
from customer c
join rental r on c.customer_id = r.customer_id
join inventory i on r.inventory_id = i.inventory_id
join film f on i.film_id = f.film_id;
select * from vista_clientes_peliculas_rentadas;

create view vista_peliculas_con_rentas as
select f.title, count(r.rental_id) as rentas 
from film f
left join inventory i on f.film_id = i.film_id
left join rental r on i.inventory_id = r.inventory_id
group by f.film_id, f.title;
select * from vista_peliculas_con_rentas;

create view vista_actores_cantidad_peliculas as
select concat(a.first_name, ' ', a.last_name) as actor, count(fa.film_id) as cantidad_peliculas
from actor a
left join film_actor fa on a.actor_id = fa.actor_id
group by a.actor_id
order by actor;
select * from vista_actores_cantidad_peliculas;

create view vista_tiendas_num_empleados as
select s.store_id, count(st.staff_id) as num_empleados
from store s
left join staff st on s.store_id = st.store_id
group by s.store_id;
select * from vista_tiendas_num_empleados;

create view peliculas_con_misma_duracion as
select title 
from film
where length = (select length from film where title = 'alien center');
select * from peliculas_con_misma_duracion;

SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment
    WHERE amount > 5
);

SELECT title FROM film
WHERE rental_rate = (SELECT rental_rate FROM film WHERE title = 'zoolander fiction');

select first_name, last_name from actor
where actor_id in (select actor_id from film_actor
where film_id= (select film_id from film where title = 'GHOSTBUSTERS ELF'));

select title, length from film
where length > (select avg(length) from film);

select first_name, last_name from customer
where customer_id in (select distinct customer_id from payment);

select title from film
where film_id not in (select film_id from inventory
where inventory_id in (select inventory_id from rental));

select name from category
where category_id in (select category_id from film_category group by category_id
having (count(film_id) > 50));

select first_name, last_name from staff
where store_id = (select store_id from inventory
group by store_id
order by count(*) desc limit 1);

select title from film where rating = (select rating from film where title = 'ACADEMY DINOSAUR');

select first_name, last_name from actor
where actor_id in (select actor_id from film_actor group by actor_id
having count(film_id) > 20);

use tienda_departamental;

create view articulos_precio_mayor_promedio as
select nombre from articulo
where precio > (select avg(precio) from articulo);
select * from articulos_precio_mayor_promedio;


create view sucursales_con_ventas as
select nombre from sucursal
where id_sucursal in (select distinct id_sucursal from venta);
select * from sucursales_con_ventas;


create view marcas_con_articulos_mas_20 as
select distinct nombre from marca
where clave_marca in (select clave_marca from articulo
where existencia > 20);
select * from marcas_con_articulos_mas_20;


create view departamentos_con_articulos_mas_65 as
select nombre from departamento
where clave_departamento in (select clave_departamento from articulo
where existencia > 65);
select * from departamentos_con_articulos_mas_65;


create view empleados_ventas_mayores_1500 as
select nombre from empleado
where id_empleado in (select id_empleado from venta
where total > 1500);
select * from empleados_ventas_mayores_1500;

use liga_futbol;

create view jugadores_mas_goles_que_promedio as
select nombre_jugador, goles from jugador 
where goles > (select avg(goles) from jugador);
select * from jugadores_mas_goles_que_promedio;


create view jugadores_mas_partidos_que_primero as
select nombre_jugador, partidos_jugados from jugador
where partidos_jugados > (select partidos_jugados from jugador
order by numero_jugador limit 1);
select * from jugadores_mas_partidos_que_primero;


create view jugador_mas_goles as
select nombre_jugador, partidos_jugados
from jugador
where partidos_jugados = (
select partidos_jugados from jugador
order by goles desc limit 1);
select * from jugador_mas_goles;


create view promedio_goles_5_partidos as
select avg(goles) as promedio_goles from jugador 
group by partidos_jugados 
having partidos_jugados = 5;
select * from promedio_goles_5_partidos;


create view suma_goles_mas_3_partidos as
select sum(goles) as total_goles from jugador 
where numero_jugador in (select numero_jugador from jugador 
where partidos_jugados > 3);
select * from suma_goles_mas_3_partidos;

use escuela;

create view estudiantes_calificacion_maxima as
select nombre, grado, grupo from estudiante
where numero_control in (
    select numero_control from calificaciones
    where calificacion = (select max(calificacion) from calificaciones)
);
select * from estudiantes_calificacion_maxima;


create view estudiantes_participacion_mas_3 as
select nombre from estudiante
where numero_control in (select numero_control from participacion_eventos
group by numero_control
having count(*) > 3);
select * from estudiantes_participacion_mas_3;


create view estudiantes_sin_participacion as
select nombre from estudiante
where numero_control not in (select numero_control from participacion_eventos);
select * from estudiantes_sin_participacion;


create view estudiantes_evento_2 as
select nombre from estudiante 
where numero_control in (select numero_control from participacion_eventos
where id_evento = 2);
select * from estudiantes_evento_2;


create view estudiantes_calificacion_mayor_promedio as
select nombre from estudiante
where numero_control in (select numero_control from calificaciones
where calificacion > (select avg(calificacion) from calificaciones));
select * from estudiantes_calificacion_mayor_promedio;





