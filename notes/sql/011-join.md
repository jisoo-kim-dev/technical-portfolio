# Day 11: JOIN

## Why JOIN?

Real databases store related data in multiple tables.

Customers
- CustomerID
- CustomerName
- Country

Orders
- OrderID
- CustomerID
- Product
- Amount

JOIN combines rows from related tables.

## INNER JOIN

```sql
SELECT Customers.CustomerName, Orders.Product
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

Only matching rows are returned.

## Aliases

```sql
SELECT c.CustomerName, o.Product
FROM Customers AS c
JOIN Orders AS o
ON c.CustomerID = o.CustomerID;
```

## Summary

- JOIN connects tables.
- ON defines how they are connected.
- INNER JOIN returns matching rows only.
