# Lesson 07: MIN & MAX

## What are MIN() and MAX()?

The `MIN()` function returns the smallest value in a column.

The `MAX()` function returns the largest value in a column.

These functions work with numeric values, dates, and text (alphabetically).

## Syntax

Find the smallest value:

```sql
SELECT
    MIN(column_name)
FROM TableName;
```

Find the largest value:

```sql
SELECT
    MAX(column_name)
FROM TableName;
```

## Example

Find the youngest customer:

```sql
SELECT
    MIN(Age)
FROM Customers;
```

This query returns the smallest value in the `Age` column.

Result:

| MIN(Age) |
|----------:|
| 22 |

Find the oldest customer:

```sql
SELECT
    MAX(Age)
FROM Customers;
```

This query returns the largest value in the `Age` column.

Result:

| MAX(Age) |
|----------:|
| 40 |

## Notes

### Supported data types

`MIN()` and `MAX()` can be used with:

- Numbers
- Dates
- Text (alphabetically)

For text values:

- `MIN()` returns the first value alphabetically.
- `MAX()` returns the last value alphabetically.

## Key Takeaways

- `MIN()` returns the smallest value in a column.
- `MAX()` returns the largest value in a column.
- Both functions work with numbers, dates, and text.
- `MIN()` and `MAX()` ignore `NULL` values.