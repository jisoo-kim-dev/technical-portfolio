-- Lesson 19: COALESCE
-- Tables:
-- Customers(CustomerID, CustomerName, Age, Country)
-- Orders(OrderID, CustomerID, Product, Amount)

-- 1. Return CustomerName and replace NULL Country with 'Unknown'.
SELECT
    CustomerName,
    COALESCE(Country, 'Unknown') AS Country
FROM Customers;

-- 2. Return Product and replace NULL Amount with 0.
SELECT
    Product,
    COALESCE(Amount, 0) AS Amount
FROM Orders;

-- 3. Return CustomerName and replace NULL Age with 18.
SELECT
    CustomerName,
    COALESCE(Age, 18) AS Age
FROM Customers;

-- 4. Return Country and replace NULL with 'N/A'.
SELECT
    COALESCE(Country, 'N/A') AS Country
FROM Customers;

-- 5. Return Product and replace NULL Product with 'No Product'.
SELECT
    COALESCE(Product, 'No Product') AS Product
FROM Orders;

-- 6. Return CustomerName and Country as Nation,
-- replacing NULL Country with 'Unknown'.
SELECT 
    CustomerName,
    COALESCE(Country, 'Unknown') AS Nation
FROM Customers;

-- 7. Rewrite this query using COALESCE.

-- SELECT CustomerName,
-- CASE
--     WHEN Country IS NULL THEN 'Unknown'
--     ELSE Country
-- END AS Country
-- FROM Customers;
SELECT
    CustomerName,
    COALESCE(Country, 'Unknown') AS Country
FROM Customers;

-- 8. Return CustomerName and Age,
-- replacing NULL Age with 0.
SELECT
    CustomerName,
    COALESCE(Age, 0) AS Age
FROM Customers;