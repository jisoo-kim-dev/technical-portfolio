-- Day 04: LIMIT
-- Table: Customers
-- Columns: CustomerName, Country, Age

-- Exercise 1
-- Retrieve the first 5 customers.
SELECT *
FROM Customers
LIMIT 5;


-- Exercise 2
-- Retrieve the first 3 customer names.
SELECT CustomerName
FROM Customers
LIMIT 3;


-- Exercise 3
-- Retrieve the oldest 2 customers.
SELECT *
FROM Customers
ORDER BY Age DESC
LIMIT 2;


-- Exercise 4
-- Retrieve the youngest customer.
SELECT *
FROM Customers
ORDER BY Age ASC
LIMIT 1;