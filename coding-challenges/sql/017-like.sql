-- Lesson 17: LIKE
-- Tables:
-- Customers(CustomerID, CustomerName, Age, Country)
-- Orders(OrderID, CustomerID, Product, Amount)

-- 1. Return the names of customers whose names start with 'A'.
SELECT CustomerName
FROM Customers
WHERE CustomerName LIKE 'A%';

-- 2. Return the names of customers whose names end with 'n'.
SELECT CustomerName
FROM Customers
WHERE CustomerName LIKE '%n';

-- 3. Return the names of customers whose names contain 'an'.
SELECT CustomerName
FROM Customers
WHERE CustomerName LIKE '%an%';

-- 4. Return the names of customers whose names have 'a' as the second letter.
SELECT CustomerName
FROM Customers
WHERE CustomerName LIKE '_a%';

-- 5. Return the products whose names start with 'P'.
SELECT Product
FROM Orders
WHERE Product LIKE 'P%';

-- 6. Return the products whose names end with 'e'.
SELECT Product
FROM Orders
WHERE Product LIKE '%e';

-- 7. Rewrite this query using LIKE.

-- SELECT CustomerName
-- FROM Customers
-- WHERE CustomerName = 'Alice';
SELECT CustomerName
FROM Customers
WHERE CustomerName LIKE 'Alice';

-- 8. Return the names of customers whose names do NOT start with 'A'.
SELECT CustomerName
FROM Customers
WHERE CUstomerName NOT LIKE 'A%';