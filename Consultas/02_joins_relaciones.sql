-- 1. Consultar información de los clientes
select c.first_name, c.last_name, ci.city, co.country
from customer c
inner join address a on c.address_id = a.address_id
inner join city ci on a.city_id = ci.city_id
inner join country co on ci.country_id = co.country_id
order by co.country, ci.city;

-- 2. Top 10 clientes que más han gastado
select c.customer_id, c.first_name, c.last_name, sum(p.amount) as gasto_total
from customer c
inner join payment p on c.customer_id = p.customer_id
group by c.customer_id, c.first_name, c.last_name
order by gasto_total desc
limit 10;

-- 3. Registro de clientes con deudas con sus datos
select r.rental_id, r.rental_date, c.first_name, c.last_name, c.email
from rental r
inner join customer c on r.customer_id = c.customer_id
where r.return_date is null
order by r.rental_date;

-- 4. Ingresos tottales por tiendas
select s.store_id, sum(p.amount) as ingresos_totales
from payment p
inner join staff st on p.staff_id = st.staff_id
inner join store s on st.store_id = s.store_id
group by s.store_id
order by ingresos_totales desc;

-- 5. Categorías con menos copias disponibles en inventario
select cat.name as categoria, count(i.inventory_id) as copias_disponibles
from category cat
left join film_category fc on cat.category_id = fc.category_id
left join inventory i on fc.film_id = i.film_id
group by cat.name
order by copias_disponibles asc;

