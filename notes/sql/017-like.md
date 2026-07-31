# Lesson 17: LIKE

## What is LIKE?

`LIKE` is used to search for text patterns.

## Syntax

```sql
SELECT column_name
FROM TableName
WHERE column_name LIKE 'pattern';
```

## Wildcards

- `%` = zero or more characters
- `_` = exactly one character

## Examples

```sql
SELECT CustomerName
FROM Customers
WHERE CustomerName LIKE 'A%';
```

```sql
SELECT CustomerName
FROM Customers
WHERE CustomerName LIKE '%an%';
```

```sql
SELECT CustomerName
FROM Customers
WHERE CustomerName LIKE '_a%';
```

## Notes

- `%` matches any number of characters.
- `_` matches exactly one character.
- `NOT LIKE` excludes matching patterns.

## Key Takeaways

- LIKE searches text.
- `%` = many characters.
- `_` = one character.
