-- Day 10: HAVING
-- Table: Customers
-- Columns: CustomerName, Country, Age

-- Exercise 1
-- Show countries with at least 2 customers.
SELECT Country, COUNT(*)
FROM Customers
GROUP BY Country
HAVING COUNT(*) >= 2;

-- Exercise 2
-- Show countries whose average age is at least 30.
SELECT Country, AVG(Age)
FROM Customers
GROUP BY Country
HAVING AVG(Age) >= 30;

-- Exercise 3
-- Show countries whose youngest customer is at least 20.
SELECT Country, MIN(Age)
FROM Customers
GROUP BY Country
HAVING MIN(Age) >= 20;

-- Exercise 4
-- Show countries whose oldest customer is greater than 40.
SELECT Country, MAX(Age)
FROM Customers
GROUP BY Country
HAVING MAX(Age) > 40;