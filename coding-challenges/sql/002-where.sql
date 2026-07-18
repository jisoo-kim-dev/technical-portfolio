-- Retrieve customers from the USA
SELECT *
FROM Customers
WHERE Country = 'USA';

-- Retrieve customers who are 30 years old or older
SELECT *
FROM Customers
WHERE Age >= 30;

-- Retrieve customers from the USA who are 30 years old or older
SELECT *
FROM Customers
WHERE Country = 'USA'
  AND Age >= 30;