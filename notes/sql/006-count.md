# Day 06: COUNT

## What is COUNT?

`COUNT()` returns the number of rows.

## Basic Syntax

```sql
SELECT COUNT(*)
FROM Customers;
```

This counts every row in the table.

## COUNT(column)

```sql
SELECT COUNT(Age)
FROM Customers;
```

This counts only rows where `Age` is NOT NULL.

## COUNT(DISTINCT)

```sql
SELECT COUNT(DISTINCT Country)
FROM Customers;
```

This counts the number of unique countries.

## Summary

- `COUNT(*)` → counts all rows
- `COUNT(column)` → counts non-NULL values
- `COUNT(DISTINCT column)` → counts unique non-NULL values
