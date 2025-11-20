select * from sakila.country;

-- workbook 7a Module 5: Modifying the Data & the Database
-- Inserting, Updating, and Deleting Data

-- INSERT INTO example
INSERT INTO country
values(110, 'Zimbabwe', NOW());

insert into country(country, last_update)
values('Craeg', NOW()); -- automatically adds additional country_id to 111

insert into country(country, last_update)
values('Modi', NOW());

SELECT *
FROM country;

-- UPDATE
-- update syntax
/* UPDATE table-name 
SET column1 = value1, column2 = value2, ... 
WHERE condition;
*/
-- ! ! ! DO NOT FORGET THE WHERE CLAUSE ! ! ! (it will change all the data)

-- update example

UPDATE customer 
SET first_name = 'PATTY', last_name = 'JOHNSTON' 
WHERE customer_id = 2;

SELECT * 
FROM customer
WHERE first_name = "Patty";

SET SQL_SAFE_UPDATES=0;

UPDATE customer
SET first_name = 'PATRICE'
WHERE first_name = 'PATTY';

-- 
SET SQL_SAFE_UPDATES=0;

UPDATE customer
SET first_name = 'PATRICE'
WHERE first_name = 'PATTY';

SET SQL_SAFE_UPDATES=1;

-- DELETE 
select * 
from country;

delete from country
where country_id = 111;

delete from country
where country_id = 112;

