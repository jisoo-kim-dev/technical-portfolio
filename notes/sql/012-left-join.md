# Day 12: LEFT JOIN

## INNER JOIN vs LEFT JOIN

- INNER JOIN: only matching rows.
- LEFT JOIN: all rows from the left table plus matching rows from the right table.

Example:

```sql
SELECT c.CustomerName, o.Product
FROM Customers AS c
LEFT JOIN Orders AS o
ON c.CustomerID = o.CustomerID;
```

If a customer has no order, the order columns become NULL.
