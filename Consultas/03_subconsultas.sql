-- 1. Películas que nunca han sido alquiladas por clientes
select f.title
from film f
where not exists (
    select 1
    from inventory i
    join rental r on r.inventory_id = i.inventory_id
    where i.film_id = f.film_id
);


-- 2. Clientes cuyo gasto total supera el gasto medio de todos los clientes
select c.customer_id, c.first_name, c.last_name, sum(p.amount) as gasto_total
from customer c
join payment p on c.customer_id = p.customer_id
group by c.customer_id, c.first_name, c.last_name
having sum(p.amount) > (
    select avg(gasto) from (
        select sum(amount) as gasto
        from payment
        group by customer_id
    ) sub
)
order by gasto_total desc;



-- 3. Última película alquilada por cada cliente 

select distinct on (c.customer_id)
    c.customer_id,
    c.first_name,
    c.last_name,
    r.rental_date as ultimo_alquiler,
    f.title as ultima_pelicula
from customer c
left join rental r on r.customer_id = c.customer_id
left join inventory i on i.inventory_id = r.inventory_id
left join film f on f.film_id = i.film_id
order by c.customer_id, r.rental_date desc;


