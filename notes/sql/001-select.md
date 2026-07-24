# Lesson 01: SELECT

## What is SELECT?

The `SELECT` statement retrieves data from a database table.

It is used to choose which columns you want to display in the query result.

## Syntax

```sql
SELECT
    column1,
    column2
FROM TableName;
```

## Example

```sql
SELECT
    Id,
    Name
FROM Customers;
```

Result:

| Id | Name |
|----|------|
| 1 | Alice |
| 2 | Bob |

## Notes

### Avoid `SELECT *`

Instead of selecting every column,

```sql
SELECT *
FROM Customers;
```

it is usually better to retrieve only the columns you need.

Benefits:

- Better performance
- Less memory usage
- Easier to read
- Clearer intent

## Key Takeaways

- `SELECT` retrieves data from a table.
- Specify only the columns you need whenever possible.
- Avoid `SELECT *` unless you truly need every column.
- Selecting fewer columns makes queries more efficient and easier to read.