SELECT * FROM products;
/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */

SELECT p.Name AS Product, c.Name AS Category
FROM products AS p
INNER JOIN categories AS c
WHERE c.Name = "Computers";

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT p.Name, p.price, r.Rating
FROM products AS p
INNER JOIN review AS r
ON p.ProductID = r.ProductID
WHERE r.Rating = 5;

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT CONCAT(e.FirstName, " ", e.LastName) AS Employee, SUM(s.Quantity) AS Total
FROM employees AS e
INNER JOIN sales AS s
ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID
HAVING Total = (SELECT SUM(sales.Quantity) AS Total FROM sales GROUP BY sales.EmployeeID ORDER BY Total DESC LIMIT 1);

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.Name AS Department, c.Name AS Category FROM categories AS c
INNER JOIN departments AS d
ON d.DepartmentID = c.DepartmentID
WHERE c.Name = "Appliances" OR c.Name = "Games";

/* joins: find the product name, total # sold, and total price sold,

 for Eagles: Hotel California --You may need to use SUM() */
SELECT 
    p.Name AS Product,
    SUM(s.Quantity) AS TotalQuantity,
    SUM(s.PricePerUnit * s.Quantity) AS TotalValue
FROM
    products AS p
        INNER JOIN
    sales AS s ON p.ProductID = s.ProductID
WHERE
    p.Name = 'Eagles: Hotel California';

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.Name AS Product, r.Reviewer, r.Rating, r.Comment
FROM reviews AS r
INNER JOIN products AS p
ON p.ProductID = r.ProductID
WHERE p.Name = "Visio TV"
ORDER BY r.rating
LIMIT 1;

