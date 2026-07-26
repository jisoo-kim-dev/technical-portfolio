-- Lesson 15: IN and NOT IN
-- Tables:
-- Customers(CustomerID, CustomerName, Age, Country)
-- Orders(OrderID, CustomerID, Product, Amount)

-- 1. Return the names and countries of customers
-- whose Country is USA, Canada, or Mexico.
SELECT CustomerName, Country
FROM Customers
WHERE Country IN ('USA', 'Canada', 'Mexico');

-- 2. Return the names of customers
-- whose Country is not USA or Canada.
SELECT CustomerName
FROM Customers
WHERE Country NOT IN ('USA', 'Canada');

-- 3. Return all customers whose Age is 25, 30, or 35.
SELECT *
FROM Customers
WHERE Age IN (25, 30, 35);

-- 4. Return the order IDs and products
-- whose Product is Laptop, Tablet, or Phone.
SELECT OrderID, Product
FROM Orders
WHERE Product IN ('Laptop', 'Tablet', 'Phone');

-- 5. Return the order IDs, products, and amounts
-- for orders whose Amount is not 100, 200, or 300.
SELECT OrderID, Product, Amount
FROM Orders
WHERE Amount NOT IN (100, 200, 300);

-- 6. Return the names and countries of customers
-- whose Country is Korea, Japan, China, or Vietnam.
SELECT CustomerName, Country
FROM Customers
WHERE Country IN ('Korea', 'Japan', 'China', 'Vietnam');

-- 7. Rewrite the following query using IN:

-- SELECT CustomerName
-- FROM Customers
-- WHERE
--     Country = 'USA'
--     OR Country = 'Canada'
--     OR Country = 'Mexico';
SELECT CustomerName
FROM Customers
WHERE Country IN ('USA', 'Canada', 'Mexico');

-- 8. Return the names of customers
-- whose Country is not NULL
-- and whose Country is not USA, Canada, or Mexico.
SELECT CustomerName
FROM Customers
WHERE
    Country IS NOT NULL
    AND Country NOT IN ('USA', 'Canada', 'Mexico');