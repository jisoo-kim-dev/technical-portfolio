# SQL ORDER BY

## What is it?

`ORDER BY` sorts the rows returned by a SQL query.

It can sort values in ascending or descending order.

- `ASC` means ascending order.
- `DESC` means descending order.
- `ASC` is the default sorting order and can be omitted.

---

## Syntax

```sql
SELECT column_name
FROM table_name
ORDER BY column_name ASC;
```

Descending order:

```sql
SELECT column_name
FROM table_name
ORDER BY column_name DESC;
```

---

## Example

Sort customers from youngest to oldest:

```sql
SELECT *
FROM Customers
ORDER BY Age;
```

Sort customers from oldest to youngest:

```sql
SELECT *
FROM Customers
ORDER BY Age DESC;
```

---

## Sorting by Multiple Columns

```sql
SELECT *
FROM Customers
ORDER BY Age DESC, CustomerName ASC;
```

SQL first sorts by `Age` in descending order.
If multiple customers have the same age, SQL sorts them alphabetically by `CustomerName`.

---

## Best Practice

- `ASC` is optional because it is the default.
- Write `DESC` explicitly.
- When using multiple columns, specifying `ASC` or `DESC` makes the query easier to read.

---

## Interview Tip

The default sorting direction of `ORDER BY` is `ASC`.

---

## My Understanding

`ORDER BY` changes the order of query results.

- `ASC` sorts from smallest to largest (A → Z).
- `DESC` sorts from largest to smallest (Z → A).

When multiple columns are listed, SQL sorts by the first column and uses the following columns to break ties.

---

Part of the Technical Portfolio.
