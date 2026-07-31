-- Lesson 16: BETWEEN
-- Tables:
-- Customers(CustomerID, CustomerName, Age, Country)
-- Orders(OrderID, CustomerID, Product, Amount)

-- 1. Return the names and ages of customers
-- whose Age is between 20 and 30.
SELECT CustomerName, Age
FROM Customers
WHERE Age BETWEEN 20 AND 30;

-- 2. Return all customers
-- whose Age is between 25 and 35.
SELECT *
FROM Customers
WHERE Age BETWEEN 25 AND 35;

-- 3. Return the order IDs and amounts
-- whose Amount is between 100 and 500.
SELECT OrderID, Amount
FROM Orders
WHERE Amount BETWEEN 100 AND 500;

-- 4. Return the names of customers
-- whose Age is not between 20 and 30.
SELECT CustomerName
FROM Customers
WHERE Age NOT BETWEEN 20 AND 30;

-- 5. Return the order IDs, products, and amounts
-- whose Amount is not between 200 and 500.
SELECT OrderID, Product, Amount
FROM Orders
WHERE Amount NOT BETWEEN 200 AND 500;

-- 6. Return the names and ages of customers
-- whose Age is between 18 and 25.
SELECT CustomerName, Age
FROM Customers
WHERE Age BETWEEN 18 AND 25;

-- 7. Rewrite this query using BETWEEN.

-- SELECT CustomerName, Age
-- FROM Customers
-- WHERE
--     Age >= 20
--     AND Age <= 30;
SELECT CustomerName, Age
FROM Customers
WHERE Age BETWEEN 20 AND 30;

-- 8. Rewrite this query without using BETWEEN.

-- SELECT CustomerName
-- FROM Customers
-- WHERE Age BETWEEN 30 AND 40;
SELECT CustomerName
FROM Customers
WHERE
    Age >= 30
    AND Age <= 40;