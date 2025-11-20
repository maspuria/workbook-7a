-- Exercise 2 Insert, Update, and Delete (page 101)
use northwind;

SELECT * 
FROM suppliers;

-- 1. Add a new supplier. 
INSERT INTO suppliers
VALUES (30, "Mars Co", "Marianna A", "CEO", "888 S. Mars Dr",
 "Boston", "MA", 02134, "USA", "888-888-8888", "888-888-8888", NULL);

-- 2. Add a new product provided by that supplier 
INSERT INTO products
VALUES (78, "Marz Chocolate Bar", 30, 3, "8 boxes", 
		5.00, 88, 0, 0,0);

-- 3. List all products and their suppliers. 
SELECT * FROM products;
SELECT * FROM suppliers;
 -- or connecting the tables to view together
SELECT ProductID, ProductName, UnitPrice,
		suppliers.CompanyName
FROM products
INNER JOIN suppliers
		ON products.SupplierID = suppliers.SupplierID
ORDER BY ProductID;
        
-- 4. Raise the price of your new product by 15%. 
SET SQL_SAFE_UPDATES=0;

UPDATE products
SET UnitPrice = UnitPrice * 1.15
WHERE ProductID = 78;

SET SQL_SAFE_UPDATES=1;

-- 5. List the products and prices of all products from that supplier. 
SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE SupplierID = 30;

-- 6. Delete the new product. 
DELETE FROM products
WHERE ProductID = 78;

-- 7. Delete the new supplier. 
DELETE FROM suppliers
WHERE SupplierID = 30;

-- 8. List all products. 
SELECT * 
FROM products;

-- 9. List all suppliers. 
SELECT * 
FROM suppliers;