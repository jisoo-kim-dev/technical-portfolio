# Lesson 08: SUM & AVG

## What are SUM() and AVG()?

The `SUM()` function returns the total of numeric values in a column.

The `AVG()` function returns the average of numeric values in a column.

Both functions ignore `NULL` values.

## Syntax

Calculate the total:

```sql
SELECT
    SUM(column_name)
FROM TableName;
```

Calculate the average:

```sql
SELECT
    AVG(column_name)
FROM TableName;
```

## Example

Calculate the total age of all customers:

```sql
SELECT
    SUM(Age)
FROM Customers;
```

This query returns the total of all values in the `Age` column.

Result:

| SUM(Age) |
|----------:|
| 153 |

Calculate the average age of all customers:

```sql
SELECT
    AVG(Age)
FROM Customers;
```

This query returns the average value of the `Age` column.

Result:

| AVG(Age) |
|----------:|
| 30.6 |

## Notes

### Supported data types

`SUM()` and `AVG()` can only be used with numeric columns.

### NULL values

Both functions ignore `NULL` values when performing calculations.

For example, if a table contains five rows but one `Age` value is `NULL`, `AVG(Age)` calculates the average using only the four non-NULL values.

## Key Takeaways

- `SUM()` returns the total of numeric values.
- `AVG()` returns the average of numeric values.
- Both functions work only with numeric data.
- Both functions ignore `NULL` values.