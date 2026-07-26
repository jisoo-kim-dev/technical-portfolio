# Lesson 15: IN and NOT IN

## What is IN and NOT IN

`IN` checks whether a value matches any value in a list.

`NOT IN` checks whether a value does not match any value in a list.

They are useful when filtering for several possible values without writing multiple `OR` conditions.

## Syntax

```sql
SELECT column_name
FROM TableName
WHERE column_name IN (value_1, value_2, value_3);
```

```sql
SELECT column_name
FROM TableName
WHERE column_name NOT IN (value_1, value_2, value_3);
```

## Example

```sql
SELECT CustomerName, Country
FROM Customers
WHERE Country IN ('USA', 'Canada', 'Mexico');
```

Result:

| CustomerName | Country |
|---|---|
| Alice | USA |
| Ben | Canada |
| Sofia | Mexico |

The same condition could be written with `OR`:

```sql
SELECT CustomerName, Country
FROM Customers
WHERE
    Country = 'USA'
    OR Country = 'Canada'
    OR Country = 'Mexico';
```

Using `IN` is shorter and easier to read.

```sql
SELECT CustomerName, Country
FROM Customers
WHERE Country NOT IN ('USA', 'Canada');
```

This returns customers whose country is neither USA nor Canada.

## Notes

- Values inside `IN` must be separated by commas.
- Text values must be enclosed in single quotation marks.
- `IN` is commonly used instead of several `OR` conditions on the same column.
- `NOT IN` excludes matching values.
- `NULL` requires special care with `NOT IN`.
- A `NULL` value does not match either `IN` or `NOT IN`.
- Use `IS NULL` or `IS NOT NULL` when filtering missing values.
- Keep a short `IN` list on one line.
- For a long list, place each value on a separate indented line.

```sql
SELECT CustomerName, Country
FROM Customers
WHERE Country IN (
    'USA',
    'Canada',
    'Mexico',
    'Korea'
);
```

## Key Takeaways

- Use `IN` to include values from a list.
- Use `NOT IN` to exclude values from a list.
- Use `IN` instead of repeated `OR` conditions on the same column.
- Do not use `IN` or `NOT IN` to test for `NULL`.
