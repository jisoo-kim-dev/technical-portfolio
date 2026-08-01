-- Lesson 22: CTE (WITH)
-- Tables:
-- Customers(CustomerID, CustomerName, Age, Country)
-- Orders(OrderID, CustomerID, Product, Amount)

-- 1. Create a CTE named CustomerAges that returns
-- CustomerName and Age from Customers.
-- Return all rows from CustomerAges.
WITH CustomerAges AS (
    SELECT
        CustomerName,
        Age
    FROM Customers
)
SELECT *
FROM CustomerAges;

-- 2. Create a CTE named AdultCustomers that returns
-- CustomerName and Age for customers whose Age is at least 18.
-- Return all rows from AdultCustomers.
WITH AdultCustomers AS (
    SELECT
        CustomerName,
        Age
    FROM Customers
    WHERE Age >= 18
)
SELECT *
FROM AdultCustomers;

-- 3. Create a CTE named CountrySummary that returns
-- Country and the number of customers in each country.
-- Name the count CustomerCount.
-- Return only countries with at least 2 customers.
WITH CountrySummary AS (
    SELECT
        Country,
        COUNT(*) AS CustomerCount
    FROM Customers
    GROUP BY Country
)
SELECT
    Country,
    CustomerCount
FROM CountrySummary
WHERE CustomerCount >= 2;

-- 4. Create a CTE named OrderSummary that returns
-- CustomerID and the total Amount for each customer.
-- Name the total TotalAmount.
-- Return all rows from OrderSummary.
WITH OrderSummary AS (
    SELECT
        CustomerID,
        SUM(Amount) AS TotalAmount
    FROM Orders
    GROUP BY CustomerID
)
SELECT *
FROM OrderSummary;

-- 5. Create a CTE named HighValueOrders that returns
-- OrderID, Product, and Amount for orders with Amount at least 100.
-- Return Product and Amount from HighValueOrders.
WITH HighValueOrders AS (
    SELECT
        OrderID,
        Product,
        Amount
    FROM Orders
    WHERE Amount >= 100
)
SELECT
    Product,
    Amount
FROM HighValueOrders;

-- 6. Create a CTE named CustomerOrders that joins Customers and Orders.
-- Return CustomerName, Product, and Amount inside the CTE.
-- In the main query, return only rows where Amount is greater than 50.
WITH CustomerOrders AS (
    SELECT
        c.CustomerName,
        o.Product,
        o.Amount
    FROM Customers AS c
    INNER JOIN Orders AS o
        ON c.CustomerID = o.CustomerID
)
SELECT
    CustomerName,
    Product,
    Amount
FROM CustomerOrders
WHERE Amount > 50;

-- 7. Create a CTE named OrderSummary that returns
-- CustomerID and SUM(Amount) as TotalAmount.
-- Join OrderSummary to Customers in the main query.
-- Return CustomerName and TotalAmount.
WITH OrderSummary AS (
    SELECT
        CustomerID,
        SUM(Amount) AS TotalAmount
    FROM Orders
    GROUP BY CustomerID
)
SELECT
    c.CustomerName,
    o.TotalAmount
FROM OrderSummary AS o
INNER JOIN Customers AS c
    ON o.CustomerID = c.CustomerID;


-- 8. Create two CTEs:
-- CustomerCountries returns CustomerID, CustomerName, and Country.
-- OrderSummary returns CustomerID and SUM(Amount) as TotalAmount.
-- Join the two CTEs and return CustomerName, Country, and TotalAmount.
WITH CustomerCountries AS (
    SELECT
        CustomerID,
        CustomerName,
        Country
    FROM Customers
),
OrderSummary AS (
    SELECT
        CustomerID,
        SUM(Amount) AS TotalAmount
    FROM Orders
    GROUP BY CustomerID
)
SELECT
    c.CustomerName,
    c.Country,
    o.TotalAmount
FROM CustomerCountries AS c
INNER JOIN OrderSummary AS o
    ON c.CustomerID = o.CustomerID;

-- 9. Rewrite the following subquery using a CTE named CountrySummary.

-- SELECT
--     Country,
--     CustomerCount
-- FROM (
--     SELECT
--         Country,
--         COUNT(*) AS CustomerCount
--     FROM Customers
--     GROUP BY Country
-- ) AS CountrySummary
-- WHERE CustomerCount >= 2;
WITH CountrySummary AS (
    SELECT
        Country,
        COUNT(*) AS CustomerCount
    FROM Customers
    GROUP BY Country
)
SELECT
    Country,
    CustomerCount
FROM CountrySummary
WHERE CustomerCount >= 2;

-- 10. Correct the following query.

-- WITH CustomerAges AS (
--     SELECT
--         CustomerName,
--         Age
--     FROM Customers
-- );
WITH CustomerAges AS (
    SELECT
        CustomerName,
        Age
    FROM Customers
)
SELECT *
FROM CustomerAges;

-- 11. Correct the following query.

-- WITH CustomerData AS (
--     SELECT CustomerID
--     FROM Customers
-- )
-- OrderData AS (
--     SELECT CustomerID
--     FROM Orders
-- )
-- SELECT *
-- FROM CustomerData;
WITH CustomerData AS (
    SELECT CustomerID
    FROM Customers
),
OrderData AS (
    SELECT CustomerID
    FROM Orders
)
SELECT *
FROM CustomerData;

-- 12. Explain in one sentence:
-- What is a CTE?
-- A CTE is a temporary named result set that can be referenced within the same SQL statement.

-- 13. Explain in one sentence:
-- What is one difference between a CTE and a permanent table?
-- A CTE is temporary and cannot be accessed after the SQL statement ends,
-- whereas a permanent table remains in the database.

-- 14. Explain in one sentence:
-- When can a CTE be easier to read than a subquery?
-- A CTE can be easier to read when a subquery contains nested or multi-step logic.
