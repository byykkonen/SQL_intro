SELECT * FROM products;
SELECT * FROM PRODUCTS WHERE Price = 1400;
SELECT * FROM PRODUCTS WHERE Price = 11.99 OR Price = 13.99;
SELECT * FROM products WHERE NOT Price = 11.99;
SELECT * FROM products ORDER BY Price DESC;
SELECT * FROM employees WHERE MiddleInitial is NULL;
SELECT DISTINCT  Price FROM products;
SELECT * FROM employees WHERE FirstName LIKE 'j%';
SELECT * FROM products WHERE Name LIKE '%mac%book%';
SELECT * FROM products WHERE OnSale;
SELECT AVG(Price) FROM products;
SELECT * FROM employees WHERE Title LIKE "%Geek%Squad" AND MiddleInitial IS NULL;
SELECT * FROM products WHERE StockLevel BETWEEN 500 AND 1200 ORDER BY price;



