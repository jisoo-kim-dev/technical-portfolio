-- Lesson 21: Subqueries
-- Tables:
-- Customers(CustomerID, CustomerName, Age, Country)
-- Orders(OrderID, CustomerID, Product, Amount)

-- 1. Return CustomerName and Age for customers
-- whose Age is greater than the average Age of all customers.
SELECT
    CustomerName,
    Age
FROM Customers
WHERE Age > (
    SELECT AVG(Age)
    FROM Customers
);

-- 2. Return Product and Amount for orders
-- whose Amount is greater than the average Amount of all orders.
SELECT
    Product,
    Amount
FROM Orders
WHERE Amount > (
    SELECT AVG(Amount)
    FROM Orders
);

-- 3. Return CustomerName for customers whose CustomerID
-- appears in the Orders table.
-- Use a subquery with IN.
SELECT
    CustomerName
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Orders
);

-- 4. Return CustomerName for customers whose CustomerID
-- does not appear in the Orders table.
-- Use a subquery with NOT IN.
-- Exclude NULL CustomerID values inside the subquery.
SELECT
    CustomerName
FROM Customers
WHERE CustomerID NOT IN (
    SELECT CustomerID
    FROM Orders
    WHERE CustomerID IS NOT NULL
);

-- 5. Return CustomerName, Age, and the average customer age.
-- Name the average-age result AverageAge.
-- Use a subquery in SELECT.
SELECT
    CustomerName,
    Age,
    (
        SELECT AVG(Age)
        FROM Customers
    ) AS AverageAge
FROM Customers;

-- 6. Return Country and CustomerCount from the summarized result below.
-- Only include countries with at least 2 customers.
-- Use a subquery in FROM and name it CountrySummary.
SELECT
    Country,
    CustomerCount
FROM (
    SELECT
        Country,
        COUNT(*) AS CustomerCount
    FROM Customers
    GROUP BY Country
) AS CountrySummary
WHERE CustomerCount >= 2;

-- 7. Return CustomerName for customers who have at least one order.
-- Use EXISTS and table aliases.
SELECT
    c.CustomerName
FROM Customers AS c
WHERE EXISTS (
    SELECT 1
    FROM Orders AS o
    WHERE o.CustomerID = c.CustomerID
);

-- 8. Return CustomerName for customers who do not have an order.
-- Use NOT EXISTS and table aliases.
SELECT
    c.CustomerName
FROM Customers AS c
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders AS o
    WHERE o.CustomerID = c.CustomerID
);

-- 9. Correct the following query.

-- SELECT CustomerName
-- FROM Customers
-- WHERE Age > SELECT AVG(Age) FROM Customers;
SELECT
    CustomerName
FROM Customers
WHERE Age > (
    SELECT AVG(Age)
    FROM Customers
);

-- 10. Correct the following query.
-- The subquery may return multiple CustomerID values.

-- SELECT CustomerName
-- FROM Customers
-- WHERE CustomerID = (
--     SELECT CustomerID
--     FROM Orders
-- );
SELECT
    CustomerName
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Orders
);

-- 11. Explain in one sentence:
-- When should IN be used instead of = with a subquery?
-- Use IN when the subquery returns multiple values instead of a single scalar value.

-- 12. Explain in one sentence:
-- What is the difference between a subquery and a JOIN?
-- A subquery uses the result of one query inside another query, whereas a JOIN combines related rows from multiple tables.
