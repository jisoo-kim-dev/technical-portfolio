# Day 05: DISTINCT

## What is DISTINCT?

`DISTINCT` removes duplicate values from a query result.

It does not delete duplicate data from the table. It only changes what is displayed in the query result.

## Basic Syntax

```sql
SELECT DISTINCT column_name
FROM table_name;
```

## Example

```sql
SELECT DISTINCT Country
FROM Customers;
```

This returns each country only once.

## DISTINCT with Multiple Columns

```sql
SELECT DISTINCT Country, Age
FROM Customers;
```

When multiple columns are selected, SQL removes duplicate combinations of those columns.

For example:

| Country | Age |
|---|---:|
| USA | 25 |
| USA | 25 |
| USA | 30 |

The query result would contain:

| Country | Age |
|---|---:|
| USA | 25 |
| USA | 30 |

## DISTINCT Placement

`DISTINCT` is written immediately after `SELECT`.

Correct:

```sql
SELECT DISTINCT Country
FROM Customers;
```

Incorrect:

```sql
SELECT Country DISTINCT
FROM Customers;
```

## Common Uses

`DISTINCT` is useful for finding:

- Unique countries
- Unique product categories
- Unique customer segments
- Unique years or dates
- Unique combinations of values

## Key Takeaway

Use `DISTINCT` when you want to return only unique values or unique combinations from a query result.
