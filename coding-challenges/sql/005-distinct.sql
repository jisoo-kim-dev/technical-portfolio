-- Day 05: DISTINCT
-- Table: Customers
-- Columns: CustomerName, Country, Age

-- Exercise 1
-- Retrieve all unique countries from the Customers table.
SELECT DISTINCT Country
FROM Customers;

-- Exercise 2
-- Retrieve all unique ages from the Customers table.
SELECT DISTINCT Age
FROM Customers;

-- Exercise 3
-- Retrieve all unique combinations of Country and Age.
SELECT DISTINCT Country, Age
FROM Customers;

-- Exercise 4
-- Retrieve the first 3 unique countries.
SELECT DISTINCT Country
FROM Customers
LIMIT 3;
