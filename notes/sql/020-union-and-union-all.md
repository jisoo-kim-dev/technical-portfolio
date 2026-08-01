# Lesson 20: UNION and UNION ALL

## What is UNION?

`UNION` combines the results of two or more `SELECT` statements into one result set.

It removes duplicate rows from the combined result.

## What is UNION ALL?

`UNION ALL` also combines the results of two or more `SELECT` statements.

Unlike `UNION`, it keeps duplicate rows.

## Why Use UNION and UNION ALL?

Use `UNION` or `UNION ALL` when data is stored in separate queries or tables but should appear in one combined list.

For example, you may want to:

- combine current and archived records
- combine customer names and employee names
- combine results from different regions
- stack rows from similar tables

## Syntax

### UNION

```sql
SELECT column1
FROM TableA

UNION

SELECT column1
FROM TableB;
```

### UNION ALL

```sql
SELECT column1
FROM TableA

UNION ALL

SELECT column1
FROM TableB;
```

## Required Rules

The `SELECT` statements must follow these rules:

1. They must return the same number of columns.
2. The columns must appear in the same order.
3. Corresponding columns should use compatible data types.

Correct:

```sql
SELECT CustomerName
FROM Customers

UNION

SELECT Product
FROM Orders;
```

Both queries return one text column.

Incorrect:

```sql
SELECT
    CustomerName,
    Country
FROM Customers

UNION

SELECT Product
FROM Orders;
```

The first query returns two columns, but the second query returns one column.

## Example: UNION

Customers table:

| CustomerName |
|--------------|
| Alice |
| Bob |
| Laptop |

Orders table:

| Product |
|---------|
| Laptop |
| Mouse |

Query:

```sql
SELECT CustomerName AS ItemName
FROM Customers

UNION

SELECT Product AS ItemName
FROM Orders;
```

Result:

| ItemName |
|----------|
| Alice |
| Bob |
| Laptop |
| Mouse |

`Laptop` appears only once because `UNION` removes duplicate rows.

## Example: UNION ALL

```sql
SELECT CustomerName AS ItemName
FROM Customers

UNION ALL

SELECT Product AS ItemName
FROM Orders;
```

Result:

| ItemName |
|----------|
| Alice |
| Bob |
| Laptop |
| Laptop |
| Mouse |

`Laptop` appears twice because `UNION ALL` keeps duplicate rows.

## UNION vs UNION ALL

| Feature | UNION | UNION ALL |
|---------|-------|-----------|
| Combines result sets | Yes | Yes |
| Removes duplicates | Yes | No |
| Keeps duplicates | No | Yes |
| Usually faster | No | Yes |

`UNION ALL` is usually faster because SQL does not need to check for and remove duplicate rows.

Use `UNION` only when duplicate removal is necessary.

## Column Names

The final result uses the column names or aliases from the first `SELECT` statement.

```sql
SELECT CustomerName AS ItemName
FROM Customers

UNION ALL

SELECT Product AS ProductName
FROM Orders;
```

The final column name is:

```text
ItemName
```

The alias `ProductName` from the second query does not become the final column name.

For clarity, it is still a good habit to use matching aliases.

```sql
SELECT CustomerName AS ItemName
FROM Customers

UNION ALL

SELECT Product AS ItemName
FROM Orders;
```

## Combining Multiple Columns

Each query can return multiple columns as long as the number, order, and data types are compatible.

```sql
SELECT
    CustomerName AS Name,
    Country AS Detail
FROM Customers

UNION ALL

SELECT
    Product AS Name,
    CAST(Amount AS TEXT) AS Detail
FROM Orders;
```

Both queries return two columns.

The first column contains text names.

The second column is converted to text so the data types are compatible.

The exact conversion function may vary by database system.

## ORDER BY with UNION

Place `ORDER BY` after the final `SELECT` statement.

```sql
SELECT CustomerName AS ItemName
FROM Customers

UNION ALL

SELECT Product AS ItemName
FROM Orders

ORDER BY ItemName;
```

The `ORDER BY` sorts the entire combined result.

Do not place a separate `ORDER BY` before `UNION` unless you are using database-specific subqueries or parentheses.

## UNION vs JOIN

`UNION` stacks rows vertically.

```text
Query 1 rows
+
Query 2 rows
```

`JOIN` combines columns horizontally by matching related rows.

```text
Table A columns + Table B columns
```

Use `UNION` when the queries have similar columns and you want more rows.

Use `JOIN` when the tables contain related information and you want more columns.

## Notes

- `UNION` combines rows and removes duplicates.
- `UNION ALL` combines rows and keeps duplicates.
- Every `SELECT` must return the same number of columns.
- Corresponding columns should use compatible data types.
- The final column names come from the first `SELECT`.
- `ORDER BY` goes after the final query.
- `UNION ALL` is generally faster than `UNION`.
- `UNION` stacks rows, while `JOIN` combines columns.

## Key Takeaways

- Use `UNION` when duplicate rows should be removed.
- Use `UNION ALL` when duplicate rows should be preserved.
- Prefer `UNION ALL` when duplicate removal is unnecessary.
- Match the number, order, and data types of the selected columns.
- Place `ORDER BY` at the end of the combined query.
