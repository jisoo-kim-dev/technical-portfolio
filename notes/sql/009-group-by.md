# Lesson 09: GROUP BY

## What is GROUP BY?

The `GROUP BY` clause groups rows that have the same values in one or more columns.

It is commonly used with aggregate functions to summarize data for each group instead of the entire table.

## Syntax

```sql
SELECT
    column1,
    aggregate_function(column2)
FROM TableName
GROUP BY column1;
```

## Example

Calculate the average age for each country:

```sql
SELECT
    Country,
    AVG(Age)
FROM Customers
GROUP BY Country;
```

This query returns one average age for each country.

Result:

| Country | AVG(Age) |
|----------|---------:|
| USA | 28.5 |
| Canada | 34.0 |
| South Korea | 30.0 |

## Notes

### Without `GROUP BY`

```sql
SELECT
    AVG(Age)
FROM Customers;
```

This query returns one average age for all customers.

### Common aggregate functions

`GROUP BY` is commonly used with:

- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`

### Rule

Every selected column that is **not** an aggregate function must appear in the `GROUP BY` clause.

For example:

```sql
SELECT
    Country,
    AVG(Age)
FROM Customers
GROUP BY Country;
```

This query is valid because `Country` appears in both the `SELECT` and `GROUP BY` clauses.

## Key Takeaways

- `GROUP BY` groups rows with the same values.
- It is commonly used with aggregate functions.
- Without `GROUP BY`, aggregate functions return a single result for the entire table.
- Every non-aggregated column in the `SELECT` clause must appear in `GROUP BY`.
