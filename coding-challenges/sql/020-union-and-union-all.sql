-- Lesson 20: UNION and UNION ALL
-- Tables:
-- Customers(CustomerID, CustomerName, Age, Country)
-- Orders(OrderID, CustomerID, Product, Amount)

-- 1. Combine CustomerName from Customers and Product from Orders.
-- Remove duplicate rows.
-- Name the final column ItemName.
SELECT CustomerName AS ItemName
FROM Customers

UNION

SELECT Product AS ItemName
FROM Orders;

-- 2. Combine CustomerName from Customers and Product from Orders.
-- Keep duplicate rows.
-- Name the final column ItemName.
SELECT CustomerName AS ItemName
FROM Customers

UNION ALL

SELECT Product AS ItemName
FROM Orders;

-- 3. Combine Country from Customers and Product from Orders.
-- Remove duplicate rows.
-- Name the final column Value.
SELECT Country AS Value
FROM Customers

UNION

SELECT Product AS Value
FROM Orders;

-- 4. Combine Country from Customers and Product from Orders.
-- Keep duplicate rows.
-- Name the final column Value.
SELECT Country AS Value
FROM Customers

UNION ALL

SELECT Product AS Value
FROM Orders;

-- 5. Combine CustomerID from Customers and CustomerID from Orders.
-- Remove duplicate rows.
-- Name the final column CustomerID.
SELECT CustomerID
FROM Customers

UNION

SELECT CustomerID
FROM Orders;

-- 6. Combine CustomerID from Customers and CustomerID from Orders.
-- Keep duplicate rows.
-- Name the final column CustomerID.
SELECT CustomerID
FROM Customers

UNION ALL

SELECT CustomerID
FROM Orders;

-- 7. Combine CustomerName from Customers and Product from Orders.
-- Keep duplicate rows and sort the final result alphabetically.
-- Name the final column ItemName.
SELECT CustomerName AS ItemName
FROM Customers

UNION ALL

SELECT Product AS ItemName
FROM Orders

ORDER BY ItemName;


-- 8. Correct the following query so that UNION works.

-- SELECT
--     CustomerName,
--     Country
-- FROM Customers
--
-- UNION
--
-- SELECT Product
-- FROM Orders;
SELECT CustomerName
FROM Customers

UNION

SELECT Product
FROM Orders;

-- 9. Explain in one sentence:
-- What is the difference between UNION and UNION ALL?
UNION removes duplicates, whereas UNION ALL keeps duplicates and is usually faster.

-- 10. Explain in one sentence:
-- What is the difference between UNION and JOIN?
UNION combines rows vertically, whereas JOIN combines columns horizontally.
