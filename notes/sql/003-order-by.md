# Lesson 03: ORDER BY

## What is ORDER BY?

The `ORDER BY` clause sorts the rows returned by a SQL query.

It can sort values in ascending or descending order.

## Syntax

Ascending order (default):

```sql
SELECT
    column1,
    column2
FROM TableName
ORDER BY column1;
```

Descending order:

```sql
SELECT
    column1,
    column2
FROM TableName
ORDER BY column1 DESC;
```

## Example

Sort customers from youngest to oldest:

```sql
SELECT
    CustomerName,
    Age
FROM Customers
ORDER BY Age;
```

Result:

| CustomerName | Age |
|--------------|-----|
| David | 22 |
| Bob | 25 |
| Alice | 31 |

Sort customers from oldest to youngest:

```sql
SELECT
    CustomerName,
    Age
FROM Customers
ORDER BY Age DESC;
```

Result:

| CustomerName | Age |
|--------------|-----|
| Alice | 31 |
| Bob | 25 |
| David | 22 |

## Notes

### Default sorting order

`ASC` (ascending) is the default sorting order and can be omitted.

```sql
ORDER BY Age;
```

is equivalent to

```sql
ORDER BY Age ASC;
```

### Sorting by multiple columns

```sql
SELECT
    CustomerName,
    Age
FROM Customers
ORDER BY
    Age DESC,
    CustomerName ASC;
```

SQL first sorts by `Age` in descending order.

If multiple rows have the same age, it then sorts those rows alphabetically by `CustomerName`.

## Key Takeaways

- `ORDER BY` sorts query results.
- `ASC` sorts in ascending order and is the default.
- `DESC` sorts in descending order.
- Multiple columns can be used for sorting.
- SQL sorts by the first column before using additional columns to break ties.
