-- Day 09: GROUP BY
-- Table: Customers
-- Columns: CustomerName, Country, Age

-- Exercise 1
-- Count customers in each country.
SELECT Country, COUNT(*)
FROM Customers
GROUP BY Country;

-- Exercise 2
-- Find the average age for each country.
SELECT Country, AVG(Age)
FROM Customers
GROUP BY Country;

-- Exercise 3
-- Find the youngest age in each country.
SELECT Country, MIN(Age)
FROM Customers
GROUP BY Country;

-- Exercise 4
-- Find the oldest age in each country.
SELECT Country, MAX(Age)
FROM Customers
GROUP BY Country;
