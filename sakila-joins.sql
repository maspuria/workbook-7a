-- Joins practice continued 11-20-2025
-- Sakila Joins
Use sakila;

-- SYNTAX
 -- SELECT column1, column2,...
 -- FROM table 1
 -- INNER JOIN table 2
 -- ON table1.column-name = table2.column-name;
SELECT rental_id, rental_date, customer.customer_id -- SELECT column1, column2,...
FROM rental -- FROM table 1
INNER JOIN customer -- INNER JOIN table 2
			ON rental.customer_id = customer.customer_id;
		-- ON table1.column-name = table2.column-name;
        
-- example: a list of all actors & what films they were in
SELECT film_actor.actor_id, film_actor.film_id,
		 actor.first_name, actor.last_name, 
		 film.title, film.release_year
FROM film_actor -- table1
INNER JOIN film	-- table2
		ON film_actor.film_id = film.film_id
INNER JOIN actor -- table3
		ON film_actor.actor_id = actor.actor_id;

        


