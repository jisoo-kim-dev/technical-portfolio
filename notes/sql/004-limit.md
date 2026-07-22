# SQL LIMIT

## What is it?

`LIMIT` restricts the number of rows returned by a query.

---

## Syntax

```sql
SELECT column_name
FROM table_name
LIMIT number;
```

---

## Example

Return the first five rows:

```sql
SELECT *
FROM Customers
LIMIT 5;
```

Return the oldest two customers:

```sql
SELECT *
FROM Customers
ORDER BY Age DESC
LIMIT 2;
```

---

## Best Practice

- Use `LIMIT` when previewing large tables.
- Combine `ORDER BY` with `LIMIT` to return the top or bottom records.

---

## Interview Tip

`LIMIT` returns only the specified number of rows.

---

## My Understanding

`LIMIT` controls how many rows are returned.

It is commonly used with `ORDER BY` to retrieve the top or bottom records.

---

Part of the Technical Portfolio.