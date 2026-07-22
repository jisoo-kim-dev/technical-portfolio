-- Day 12: LEFT JOIN
-- Tables:
-- Customers(CustomerID, CustomerName, Country)
-- Orders(OrderID, CustomerID, Product, Amount)

-- Exercise 1
-- Show every customer and their product (include customers with no orders).
SELECT c.CustomerName, o.Product
FROM Customers AS c
LEFT JOIN Orders AS o
ON c.CustomerID = o.CustomerID;

-- Exercise 2
-- Show every customer and their order amount.
SELECT c.CustomerName, o.Amount
FROM Customers AS c
LEFT JOIN Orders AS o
ON c.CustomerID = o.CustomerID;

-- Exercise 3
-- Show customers who have never placed an order.
SELECT c.CustomerName
FROM Customers AS c
LEFT JOIN Orders AS o
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;

-- Exercise 4
-- Show customer name, country, and product using table aliases.
SELECT c.CustomerName, c.Country, o.Product
FROM Customers AS c
LEFT JOIN Orders AS o
ON c.CustomerID = o.CustomerID;