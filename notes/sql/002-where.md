# Lesson 02: WHERE

## What is WHERE?

The `WHERE` clause filters rows based on specific conditions.

It allows you to retrieve only the records that match the specified criteria.

## Syntax

```sql
SELECT
    column1,
    column2
FROM TableName
WHERE condition;
```

## Example

```sql
SELECT
    CustomerName,
    Age
FROM Customers
WHERE Age < 30;
```

Result:

| CustomerName | Age |
|--------------|-----|
| Bob          | 25  |
| David        | 22  |

## Notes

### Comparison operators

The `WHERE` clause commonly uses comparison operators to filter data.

| Operator | Meaning |
|----------|---------|
| `=` | Equal to |
| `!=` or `<>` | Not equal to |
| `>` | Greater than |
| `<` | Less than |
| `>=` | Greater than or equal to |
| `<=` | Less than or equal to |

These operators can be used with numbers, text, and dates.

## Key Takeaways

- `WHERE` filters rows based on a condition.
- Only rows that satisfy the condition are returned.
- Comparison operators are commonly used with `WHERE`.
- `WHERE` helps retrieve only the data you need.