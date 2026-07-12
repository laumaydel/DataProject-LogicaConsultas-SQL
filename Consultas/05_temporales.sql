-- CTE: ranking de películas más alquiladas

with alquileres_por_pelicula as (
    select f.film_id, f.title, count(r.rental_id) as veces_alquilada
    from film f
    join inventory i on i.film_id = f.film_id
    join rental r on r.inventory_id = i.inventory_id
    group by f.film_id, f.title
)
select *
from alquileres_por_pelicula
order by veces_alquilada desc
limit 10;

-- Clientes fieles 
create temp table temp_clientes_alto_valor as
select c.customer_id, c.first_name, c.last_name, sum(p.amount) as gasto_total
from customer c
join payment p on p.customer_id = c.customer_id
group by c.customer_id, c.first_name, c.last_name
having sum(p.amount) > 150;

select * from temp_clientes_alto_valor
order by gasto_total desc;

		-- EJEMPLO DE CONSULTA CON ESTA TABLA TEMPORAL

select f.title, count(*) as veces_alquilada
from temp_clientes_alto_valor t
join rental r on r.customer_id = t.customer_id
join inventory i on i.inventory_id = r.inventory_id
join film f on f.film_id = i.film_id
group by f.title
order by veces_alquilada desc
limit 10;
