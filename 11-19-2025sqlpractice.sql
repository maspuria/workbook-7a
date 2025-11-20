-- Topic: Nested Queries
USE sakila;

-- QUERY: Which film(s) are the most expensive to replace?
SELECT film_id, title, replacement_cost  
FROM film 
WHERE replacement_cost = (SELECT MAX(replacement_cost) 
							FROM film)
ORDER BY film_id;

-- which film(s) are least expensive to replace
SELECT film_id, title, replacement_cost  
FROM film 
WHERE replacement_cost = (SELECT MIN(replacement_cost) 
							FROM film); 

-- QUERY:  Which film(s) are described as documentaries and how long do they run?                             
SELECT title, length 
FROM film 
WHERE film_id IN (SELECT film_id  
					FROM film_text  
					WHERE description LIKE "%documentary%"); 

-- JOINS 
USE sakila;

SELECT * 
FROM sakila.film;

select customer_id, first_name, last_name, address_id
from sakila.customer;

select * from address;

-- to join these : 
select customer_id, 
		first_name, 
		last_name, 
		customer.address_id as customerAddressID, 
		address.address_id as addressID,
		address,
		postal_code,
		city_id
from sakila.customer
inner join address 
			on customer.address_id = address.address_id;

-- In sakila, write a query to join customer table to the address 
-- table and display the customers name and their address in one query.
SELECT customer.customer_id,
		customer.first_name, 
		customer.last_name, 
        address.address,
		address.address_id
FROM customer
INNER JOIN address 
		on customer.address_id = address.address_id;        

-- add store_id        
SELECT customer.first_name, 
		customer.last_name, 
		store.store_id
FROM customer
INNER JOIN store 
		 on customer.store_id = store.store_id;      