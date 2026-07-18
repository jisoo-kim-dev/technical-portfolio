# SELECT Statement

## What is SELECT?

The `SELECT` statement retrieves data from a database table.

Example:

```sql
SELECT Id, Name
FROM Customers;
```

---

## Why avoid SELECT *?

Instead of selecting every column,

```sql
SELECT *
FROM Customers;
```

it is better to retrieve only the columns that are needed.

Benefits:

- Better performance
- Less memory usage
- Easier to read
- Clearer intent

---

## My Understanding

`SELECT` is used to retrieve data from a table.

I should avoid `SELECT *` unless I truly need every column because selecting only the required columns is more efficient and makes queries easier to understand.