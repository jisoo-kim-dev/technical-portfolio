# Lesson 12: LEFT JOIN

## What is LEFT JOIN?

A `LEFT JOIN` returns all rows from the left table and the matching rows from the right table.

If there is no matching row in the right table, the result contains `NULL` values for the right table's columns.

## Syntax

```sql
SELECT
    table1.column1,
    table2.column2
FROM Table1
LEFT JOIN Table2
ON table1.common_column = table2.common_column;
```

## Example

Return all customers and their orders:

```sql
SELECT
    Customers.CustomerName,
    Orders.Product
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

This query returns every customer, even if they have not placed an order.

Result:

| CustomerName | Product |
|--------------|---------|
| Alice | Laptop |
| Bob | Mouse |
| Charlie | NULL |

## Notes

### `INNER JOIN` vs `LEFT JOIN`

| JOIN | Returned Rows |
|------|---------------|
| `INNER JOIN` | Only matching rows |
| `LEFT JOIN` | All rows from the left table and matching rows from the right table |

### `RIGHT JOIN`

A `RIGHT JOIN` returns all rows from the right table and the matching rows from the left table.

It is equivalent to swapping the table order and using a `LEFT JOIN`.

### `FULL OUTER JOIN`

A `FULL OUTER JOIN` returns all rows from both tables.

Rows without matches are filled with `NULL` values.

> **Note:** MySQL does not support `FULL OUTER JOIN` directly.

A common workaround is to combine a `LEFT JOIN` and a `RIGHT JOIN` using `UNION`.

```sql
SELECT
    *
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID

UNION

SELECT
    *
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

## Key Takeaways

- `LEFT JOIN` returns every row from the left table.
- Unmatched rows from the right table become `NULL`.
- `RIGHT JOIN` is the opposite of `LEFT JOIN`.
- `FULL OUTER JOIN` returns every row from both tables.
- MySQL does not support `FULL OUTER JOIN` directly.
