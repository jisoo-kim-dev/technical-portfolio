# Lesson 13: CASE

## What is CASE?

`CASE` works like an `if/else` statement in SQL.

It evaluates conditions in order and returns a value based on the first matching condition.

`CASE` is commonly used inside `SELECT` to create a new column.

## Syntax

```sql
SELECT
    column1,
    CASE
        WHEN condition1 THEN result1
        WHEN condition2 THEN result2
        ELSE default_result
    END AS NewColumn
FROM TableName;
```

## Example

```sql
SELECT
    CustomerName,
    CASE
        WHEN Age >= 30 THEN 'Adult'
        ELSE 'Young'
    END AS AgeGroup
FROM Customers;
```

Result:

| CustomerName | AgeGroup |
|--------------|----------|
| Alice        | Adult    |
| Bob          | Young    |

## Notes

### AS (Alias)

`AS` gives a name (alias) to a new column.

```sql
CASE
    WHEN Age >= 30 THEN 'Adult'
    ELSE 'Young'
END AS AgeGroup
```

Here, `AgeGroup` is the name of the new column created by the `CASE` expression.

### Multiple conditions

```sql
SELECT
    CustomerName,
    Age,
    CASE
        WHEN Age < 20 THEN 'Teen'
        WHEN Age < 40 THEN 'Adult'
        ELSE 'Senior'
    END AS AgeGroup
FROM Customers;
```

`CASE` evaluates conditions from top to bottom and stops at the first matching condition.

The order of the conditions is important.

## Key Takeaways

- `CASE` adds conditional logic to a SQL query.
- It works similarly to an `if/else` statement.
- It returns one value for each row.
- `CASE` conditions are evaluated from top to bottom.
- `END AS ColumnName` gives the result column an alias.