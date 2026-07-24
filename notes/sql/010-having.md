# Lesson 10: HAVING

## What is HAVING?

The `HAVING` clause filters groups after the `GROUP BY` clause.

Unlike `WHERE`, which filters individual rows, `HAVING` filters the results of aggregate functions.

## Syntax

```sql
SELECT
    column1,
    aggregate_function(column2)
FROM TableName
GROUP BY column1
HAVING aggregate_function(column2) condition;
```

## Example

Return countries with at least two customers:

```sql
SELECT
    Country,
    COUNT(*)
FROM Customers
GROUP BY Country
HAVING COUNT(*) >= 2;
```

This query returns only the countries that have two or more customers.

Result:

| Country | COUNT(*) |
|----------|---------:|
| USA | 3 |
| Canada | 2 |

## Notes

### `WHERE` vs `HAVING`

`WHERE` filters rows **before** grouping.

```sql
SELECT
    CustomerName,
    Age
FROM Customers
WHERE Age >= 30;
```

`HAVING` filters groups **after** `GROUP BY`.

```sql
SELECT
    Country,
    COUNT(*)
FROM Customers
GROUP BY Country
HAVING COUNT(*) >= 2;
```

### Common pattern

```sql
SELECT
    Country,
    AVG(Age)
FROM Customers
GROUP BY Country
HAVING AVG(Age) >= 30;
```

This query returns only the countries whose average customer age is 30 or higher.

## Key Takeaways

- `WHERE` filters individual rows before grouping.
- `GROUP BY` creates groups.
- `HAVING` filters groups after `GROUP BY`.
- `HAVING` is commonly used with aggregate functions such as `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`.