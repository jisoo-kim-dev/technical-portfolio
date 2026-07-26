# Lesson 14: IS NULL and IS NOT NULL

## What is NULL?

`NULL` represents a missing or unknown value in a database.

It is different from `0`, an empty string (`''`), and `FALSE`.

Because `NULL` represents an unknown value, it cannot be compared using `=` or `!=`.

## Syntax

```sql
SELECT column1
FROM TableName
WHERE column_name IS NULL;
```

```sql
SELECT column1
FROM TableName
WHERE column_name IS NOT NULL;
```

## Example

```sql
SELECT CustomerName
FROM Customers
WHERE Country IS NULL;
```

This query returns customers whose `Country` value is missing.

Result:

| CustomerName |
|---|
| Daniel |

## Notes

### Use IS NULL to Find Missing Values

`IS NULL` returns rows where a column contains a missing value.

```sql
SELECT CustomerName
FROM Customers
WHERE Country IS NULL;
```

### Use IS NOT NULL to Find Existing Values

`IS NOT NULL` returns rows where a column contains a value.

```sql
SELECT CustomerName
FROM Customers
WHERE Country IS NOT NULL;
```

### Do Not Use = NULL

The following comparison does not work as expected:

```sql
SELECT CustomerName
FROM Customers
WHERE Country = NULL;
```

Use `IS NULL` instead:

```sql
SELECT CustomerName
FROM Customers
WHERE Country IS NULL;
```

The same rule applies to `IS NOT NULL`.

### IS NULL with LEFT JOIN

`LEFT JOIN` and `IS NULL` are commonly used together to find records that do not have a match in another table.

```sql
SELECT c.CustomerName
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;
```

This query returns customers who have not placed any orders.

Result:

| CustomerName |
|---|
| Bob |
| Diana |

### IS NOT NULL with LEFT JOIN

`IS NOT NULL` can be used after a `LEFT JOIN` to keep only rows that found a match.

```sql
SELECT c.CustomerName, o.Product
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NOT NULL;
```

This query returns customers who have placed an order.

## Key Takeaways

- `NULL` represents a missing or unknown value.
- Use `IS NULL` to find missing values.
- Use `IS NOT NULL` to find existing values.
- Do not compare `NULL` using `=` or `!=`.
- `LEFT JOIN` with `IS NULL` is a common pattern for finding unmatched records.
