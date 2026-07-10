-- 1. Películas más largas de 120 minutos, ordenadas por duración
select title, length, rental_rate
from film
where length > 120
order by length desc;

-- 2. Número de películas por clasificación (rating)
select rating, count(*) as num_peliculas
from film
group by rating
order by num_peliculas desc;


-- 3. Top 5 películas más caras de reponer
select title, replacement_cost
from film
order by replacement_cost desc
limit 5;

