# Lesson 16: BETWEEN

## What is BETWEEN?

`BETWEEN` checks whether a value falls within a range.

It is equivalent to using `>=` and `<=`.

**BETWEEN includes both boundary values.**

## Syntax

```sql
SELECT column_name
FROM TableName
WHERE column_name BETWEEN value1 AND value2;
```

```sql
SELECT column_name
FROM TableName
WHERE column_name NOT BETWEEN value1 AND value2;
```

## Example

```sql
SELECT CustomerName, Age
FROM Customers
WHERE Age BETWEEN 20 AND 30;
```

Equivalent:

```sql
SELECT CustomerName, Age
FROM Customers
WHERE
    Age >= 20
    AND Age <= 30;
```

## Notes

- BETWEEN includes both boundary values.
- Works with numbers, dates, and text.
- NOT BETWEEN returns values outside the range.
- BETWEEN is often cleaner than using >= and <=.

## Key Takeaways

- BETWEEN = inside a range.
- NOT BETWEEN = outside a range.
- BETWEEN includes both endpoints.
