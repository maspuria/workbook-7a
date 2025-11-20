-- JOINS 
Use northwind;

-- workbook 7a exercise 2 page 88
-- 1. List the product id, product name, unit price and category name of all 
-- products.  Order by category name and within that, by product name.
SELECT ProductID, 
		ProductName, 
        CategoryName,
		UnitPrice, 
		categories.CategoryName
FROM products
INNER JOIN categories 
		ON products.CategoryID = categories.CategoryID
ORDER BY CategoryName, ProductName;
