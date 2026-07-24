-- Day 11: JOIN
-- Tables:
-- Customers(CustomerID, CustomerName, Country)
-- Orders(OrderID, CustomerID, Product, Amount)

-- Exercise 1
-- Show each customer's name and product.
SELECT c.CustomerName, o.Product
FROM Customers AS c
JOIN Orders AS o
ON c.CustomerID = o.CustomerID;

-- Exercise 2
-- Show each customer's name and amount.
SELECT c.CustomerName, o.Amount
FROM Customers AS c
JOIN Orders AS o
ON c.CustomerID = o.CustomerID;

-- Exercise 3
-- Show customer name, country, and product.
SELECT Customers.CustomerName, Customers.Country, Orders.Product
FROM Customers
JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

-- Exercise 4
-- Rewrite Exercise 3 using table aliases.
SELECT c.CustomerName, c.Country, o.Product
FROM Customers AS c
JOIN Orders AS o
ON c.CustomerID = o.CustomerID;
