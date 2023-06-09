-- find all products
SELECT * FROM bestbuy.products;

-- find all products that cost $1400
SELECT * FROM bestbuy.products
WHERE price = 1400;

-- find all products that cost $11.99 or $13.99
Select * from bestbuy.products
where price = 11.99 OR price = 13.99;

-- find all products that do NOT cost 11.99 - using NOT
select * from bestbuy.products
where NOT price = 11.99;

-- find all products and sort them by price from greatest to least
Select * from products
ORDER BY price desc;

-- find all employees who don't have a middle initial
Select * from bestbuy.employees
where middleinitial is null;

-- find distinct product prices
Select DISTINCT(price) from bestbuy.products;

-- find all employees whose first name starts with the letter ‘j’
Select * from bestbuy.employees
where firstname LIKE 'j%';

-- find all Macbooks
Select * from bestbuy.products
where NAME  LIKE 'macbook%';

-- find all products that are on sale
Select * from bestbuy.products
where OnSale = 1;

-- find the average price of all products
select AVG(price) from products;

-- find all Geek Squad employees who don't have a middle initial
Select* from bestbuy.employees
Where Title Like '%Geek Squad%' AND MiddleInitial IS NULL;

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
select * from products
where stocklevel between 500 and 1200
ORDER BY Price asc;