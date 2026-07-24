# Lesson 05: DISTINCT

## What is DISTINCT?

`DISTINCT` removes duplicate values from a query result.

It does **not** delete duplicate data from a table. It only removes duplicate values from the query result.

## Syntax

```sql
SELECT DISTINCT
    column1
FROM TableName;
```

## Example

```sql
SELECT DISTINCT
    Country
FROM Customers;
```

This query returns each country only once.

Result:

| Country |
|----------|
| USA |
| Canada |
| South Korea |

## Notes

### Using `DISTINCT` with multiple columns

```sql
SELECT DISTINCT
    Country,
    Age
FROM Customers;
```

When multiple columns are selected, SQL removes duplicate **combinations** of those columns.

For example:

| Country | Age |
|----------|----:|
| USA | 25 |
| USA | 25 |
| USA | 30 |

Result:

| Country | Age |
|----------|----:|
| USA | 25 |
| USA | 30 |

### `DISTINCT` placement

`DISTINCT` is written immediately after `SELECT`.

Correct:

```sql
SELECT DISTINCT
    Country
FROM Customers;
```

Incorrect:

```sql
SELECT
    Country DISTINCT
FROM Customers;
```

## Key Takeaways

- `DISTINCT` removes duplicate values from a query result.
- It does **not** remove duplicate rows from a table.
- `DISTINCT` can be used with one or multiple columns.
- When multiple columns are selected, SQL returns unique combinations of those columns.
- `DISTINCT` is written immediately after `SELECT`.