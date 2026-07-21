-- Day 03: ORDER BY
-- Table: Customers
-- Columns: CustomerName, Country, Age

-- Exercise 1
-- Retrieve all customers and sort them from oldest to youngest.
SELECT *
FROM Customers
ORDER BY Age DESC;


-- Exercise 2
-- Retrieve all customers and sort them from youngest to oldest.
-- ASC is the default sorting order, so it can be omitted.
SELECT *
FROM Customers
ORDER BY Age;


-- Exercise 3
-- Retrieve all customers and sort them alphabetically by Country.
-- ASC is omitted because ascending order is the default.
SELECT *
FROM Customers
ORDER BY Country;


-- Exercise 4
-- Retrieve all customers and sort them from oldest to youngest.
-- If two customers have the same age, sort those customers
-- alphabetically by CustomerName.
SELECT *
FROM Customers
ORDER BY Age DESC, CustomerName ASC;