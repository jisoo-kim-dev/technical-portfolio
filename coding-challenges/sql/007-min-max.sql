-- Day 07: MIN & MAX
-- Table: Customers
-- Columns: CustomerName, Country, Age

-- Exercise 1
-- Find the youngest age.
SELECT MIN(Age)
FROM Customers;

-- Exercise 2
-- Find the oldest age.
SELECT MAX(Age)
FROM Customers;

-- Exercise 3
-- Find the alphabetically first country.
SELECT MIN(Country)
FROM Customers;

-- Exercise 4
-- Find the alphabetically last customer name.
SELECT MAX(CustomerName)
FROM Customers;
