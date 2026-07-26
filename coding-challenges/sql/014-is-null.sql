-- Lesson 14: IS NULL and IS NOT NULL
-- Tables:
-- Customers(CustomerID, CustomerName, Age, Country)
-- Orders(OrderID, CustomerID, Product, Amount)

-- 1. Return the names of customers whose Country is NULL.
SELECT CustomerName
FROM Customers
WHERE Country IS NULL;


-- 2. Return the names and countries of customers whose Country is NOT NULL.
SELECT CustomerName, Country
FROM Customers
WHERE Country IS NOT NULL;


-- 3. Return all customers whose Age is NULL.
SELECT *
FROM Customers
WHERE Age IS NULL;


-- 4. Return the names of customers who have never placed an order.
SELECT c.CustomerName
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;



-- 5. Return the names and products of customers who have placed an order.
SELECT c.CustomerName, o.Product
FROM Customers AS c
INNER JOIN Orders AS o
    ON c.CustomerID = o.CustomerID;


-- 6. Return the names of customers whose Country is NULL
-- or whose Age is NULL.
SELECT CustomerName
FROM Customers
WHERE
    Country IS NULL
    OR Age IS NULL;


-- 7. Return the names of customers whose Country is NOT NULL
-- and whose Age is NOT NULL.
SELECT CustomerName
FROM Customers
WHERE
    Country IS NOT NULL
    AND Age IS NOT NULL;