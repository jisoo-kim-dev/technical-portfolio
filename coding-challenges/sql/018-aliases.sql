-- Lesson 18: Aliases (AS)
-- Tables:
-- Customers(CustomerID, CustomerName, Age, Country)
-- Orders(OrderID, CustomerID, Product, Amount)

-- 1. Return CustomerName as Name.
SELECT CustomerName AS Name
FROM Customers;

-- 2. Return Age as CustomerAge.
SELECT Age AS CustomerAge
FROM Customers;

-- 3. Return Product as Item.
SELECT Product AS Item
FROM Orders;

-- 4. Return Amount as TotalAmount.
SELECT Amount AS TotalAmount
FROM Orders;

-- 5. Use the table alias c for Customers and return CustomerName.
SELECT c.CustomerName
FROM Customers AS c;

-- 6. Use table aliases c and o to return CustomerName and Product.
SELECT c.CustomerName, o.Product
FROM Customers AS c
INNER JOIN Orders AS o
    ON c.CustomerID = o.CustomerID;

-- 7. Rewrite the query using aliases.

-- SELECT CustomerName, Product
-- FROM Customers
-- INNER JOIN Orders
--     ON Customers.CustomerID = Orders.CustomerID;
SELECT c.CustomerName, o.Product
FROM Customers AS c
INNER JOIN Orders AS o
    ON c.CustomerID = o.CustomerID;

-- 8. Return CustomerName as Name and Country as Nation.
SELECT
    CustomerName AS Name,
    Country AS Nation
FROM Customers;
