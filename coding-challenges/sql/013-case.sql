-- Lesson 13: CASE
-- Table: Customers
-- Columns: CustomerName, Country, Age

-- Exercise 1
-- Display CustomerName and a new column named AgeGroup.
-- Age >= 30 -> 'Adult'
-- Otherwise -> 'Young'
SELECT
    CustomerName,
    CASE
        WHEN Age >= 30 THEN 'Adult'
        ELSE 'Young'
    END AS AgeGroup
FROM Customers;

-- Exercise 2
-- Display CustomerName, Age, and a new column named AgeGroup.
-- Age < 20 -> 'Teen'
-- Age < 40 -> 'Adult'
-- Otherwise -> 'Senior'
SELECT
    CustomerName,
    Age,
    CASE
        WHEN Age < 20 THEN 'Teen'
        WHEN Age < 40 THEN 'Adult'
        ELSE 'Senior'
    END AS AgeGroup
FROM Customers;

-- Exercise 3
-- Display CustomerName, Country, and a new column named Region.
-- Country = 'USA' -> 'North America'
-- Country = 'South Korea' -> 'Asia'
-- Otherwise -> 'Other'
SELECT
    CustomerName,
    Country,
    CASE
        WHEN Country = 'USA' THEN 'North America'
        WHEN Country = 'South Korea' THEN 'Asia'
        ELSE 'Other'
    END AS Region
FROM Customers;

-- Exercise 4
-- Display CustomerName, Age, and a new column named Discount.
-- Age >= 60 -> '10%'
-- Otherwise -> '0%'
SELECT
    CustomerName,
    Age,
    CASE
        WHEN Age >= 60 THEN '10%'
        ELSE '0%'
    END AS Discount
FROM Customers;