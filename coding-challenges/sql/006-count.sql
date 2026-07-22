-- Day 06: COUNT
-- Table: Customers
-- Columns: CustomerName, Country, Age

-- Exercise 1
-- Count all rows in Customers.
SELECT COUNT(*)
FROM Customers;

-- Exercise 2
-- Count all non-NULL Age values.
SELECT COUNT(Age)
FROM Customers;

-- Exercise 3
-- Count the number of unique countries.
SELECT COUNT(DISTINCT Country)
FROM Customers;

-- Exercise 4
-- Count the number of unique ages.
SELECT COUNT(DISTINCT Age)
FROM Customers;
