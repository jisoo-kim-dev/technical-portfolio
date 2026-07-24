# Lesson 04: LIMIT

## What is LIMIT?

The `LIMIT` clause restricts the number of rows returned by a query.

It is commonly used to preview data or return only the top results.

## Syntax

```sql
SELECT
    column1,
    column2
FROM TableName
LIMIT number;
```

## Example

Return the first five customers:

```sql
SELECT
    CustomerName,
    Age
FROM Customers
LIMIT 5;
```

Result:

| CustomerName | Age |
|--------------|-----|
| Alice | 31 |
| Bob | 25 |
| Charlie | 40 |
| David | 22 |
| Emma | 35 |

Return the oldest two customers:

```sql
SELECT
    CustomerName,
    Age
FROM Customers
ORDER BY Age DESC
LIMIT 2;
```

Result:

| CustomerName | Age |
|--------------|-----|
| Charlie | 40 |
| Emma | 35 |

## Notes

### Using `LIMIT` with `ORDER BY`

`LIMIT` is often combined with `ORDER BY` to return the top or bottom records.

```sql
SELECT
    CustomerName,
    Age
FROM Customers
ORDER BY Age DESC
LIMIT 3;
```

This query returns the three oldest customers.

## Key Takeaways

- `LIMIT` restricts the number of rows returned.
- It is useful for previewing large tables.
- `LIMIT` is commonly used with `ORDER BY`.
- `ORDER BY` determines which rows are returned before `LIMIT` is applied.