/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT products.Name, categories.Name
FROM products 
INNER JOIN categories on categories.CategoryID = products.CategoryID 
 WHERE categoires.Name = 'Computers';
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 SELECT products.Name as "Product Name", products.PRICE as "Product Price", reviews.Rating
FROM products 
INNER JOIN reviews ON reviews.ProductID = products.ProductID
WHERE reviews.Rating = 5;

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.FirstName, e.LastName, Sum(s.Quantity) AS Total 
FROM sales AS s 
LEFT JOIN employees AS e ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID
ORDER BY Total DESC
LIMIT 2; 

Select * from sales
where EmployeeID = 33809;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.Name as 'Department Name', c.NAme as 'Category Name' 
FROM departments as d 
INNER JOIN categories as c on c.DepartmentID = d.DepartmentID
WHERE c.Name = 'Appliances' OR c.Name = 'Games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 
SELECT p.Name, Sum(s.Quantity) as 'Total Sold' , Sum(s.Quantity = s.PricePerUnit) as 'Total Price'
FROM products as P 
INNER JOIN sales as s on s.ProductID = p.ProductID 
WHERE p.PRODUCTID = 97;

 /*==TO VERIFY== */
 Select * from sales where productID = 97; 


/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.Name, r.Reviewer, r.Rating, r.Comment FROM products as p
INNER JOIN reviews as r ON r .ProductID = p.ProductID
WHERE p.ProductID = 857 AND r.Rating = 1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */

SELECT e.EmployeeID, e.FirstName, e.LastName, p. Name, SUM(s.Quantity) as TotalSold 
FROM Sales as s
INNER JOIN employees as e on e.EmployeeID = s.EmployeeID 
INNER JOIN products as p on p.ProductID = s.ProductID 
Group BY e.EmployeeID, p.ProductID
ORDER BY TotalSold DESC;