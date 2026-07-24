# Lesson 06: COUNT

## What is COUNT?

The `COUNT()` function returns the number of rows or values that match a specified condition.

It is commonly used to count records in a table.

## Syntax

Count all rows:

```sql
SELECT
    COUNT(*)
FROM TableName;
```

Count non-NULL values:

```sql
SELECT
    COUNT(column_name)
FROM TableName;
```

Count unique non-NULL values:

```sql
SELECT
    COUNT(DISTINCT column_name)
FROM TableName;
```

## Example

Count all customers:

```sql
SELECT
    COUNT(*)
FROM Customers;
```

This query returns the total number of rows in the `Customers` table.

Result:

| COUNT(*) |
|----------:|
| 8 |

## Notes

### `COUNT(*)`

```sql
SELECT
    COUNT(*)
FROM Customers;
```

Counts **every row** in the table, including rows that contain `NULL` values.

### `COUNT(column_name)`

```sql
SELECT
    COUNT(Age)
FROM Customers;
```

Counts only rows where `Age` is **NOT NULL**.

### `COUNT(DISTINCT column_name)`

```sql
SELECT
    COUNT(DISTINCT Country)
FROM Customers;
```

Counts the number of **unique non-NULL** values in the specified column.

## Key Takeaways

- `COUNT(*)` counts all rows in a table.
- `COUNT(column_name)` counts only non-NULL values.
- `COUNT(DISTINCT column_name)` counts unique non-NULL values.
- `COUNT()` is commonly used to summarize data.