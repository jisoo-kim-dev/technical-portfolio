# Lesson 18: Aliases (AS)

## What is AS?

`AS` gives a temporary name (alias) to a column or table in a query.

Aliases make query results easier to read and SQL easier to write.

## Syntax

### Column Alias

```sql
SELECT column_name AS alias_name
FROM TableName;
```

### Table Alias

```sql
SELECT c.CustomerName
FROM Customers AS c;
```

## Examples

```sql
SELECT CustomerName AS Name
FROM Customers;
```

```sql
SELECT Amount AS TotalAmount
FROM Orders;
```

```sql
SELECT
    c.CustomerName,
    o.Product
FROM Customers AS c
INNER JOIN Orders AS o
    ON c.CustomerID = o.CustomerID;
```

## Notes

- `AS` is optional in many databases.
- Table aliases are very common when using JOINs.
- Aliases exist only for the current query.

## Key Takeaways

- Column aliases rename output columns.
- Table aliases shorten table names.
- Aliases improve readability.
