
-- VISTA 1: Gasto total de clientes
create view vista_gasto_clientes as
select 
    c.customer_id,
    c.first_name,
    c.last_name,
    count(distinct r.rental_id) as num_alquileres,
    sum(p.amount) as gasto_total
from customer c
left join rental r on r.customer_id = c.customer_id
left join payment p on p.customer_id = c.customer_id
group by c.customer_id, c.first_name, c.last_name;

-- select * from vista_gasto_clientes


-- VISTA 2: Stock total opr tienda 

create view vista_inventario_disponible as
select 
    s.store_id,
    f.film_id,
    f.title,
    count(i.inventory_id) as copias_totales
from film f
join inventory i on i.film_id = f.film_id
join store s on s.store_id = i.store_id
group by s.store_id, f.film_id, f.title;

-- select * from vista_inventario_disponible;


-- VISTA 3: Catálogo de películas por categoría

create view vista_catalogo as
select 
    f.film_id,
    f.title,
    f.rating,
    f.rental_rate,
    cat.name as categoria
from film f
left join film_category fc on fc.film_id = f.film_id
left join category cat on cat.category_id = fc.category_id;

-- select * from vista_catalogo;


-- VISTA 4: Ingresos totales por tienda.

create view vista_ingresos as
select 
    s.store_id,
    count(p.payment_id) as num_pagos,
    sum(p.amount) as ingresos_totales
from payment p
join staff st on st.staff_id = p.staff_id
join store s on s.store_id = st.store_id
group by s.store_id;

-- select * from vista_ingresos;