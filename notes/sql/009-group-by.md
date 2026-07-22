# Day 09: GROUP BY

## Why GROUP BY?

GROUP BY lets you summarize data for each group instead of the entire table.

Without GROUP BY:

```sql
SELECT AVG(Age)
FROM Customers;
```

Returns one average for all customers.

With GROUP BY:

```sql
SELECT Country, AVG(Age)
FROM Customers
GROUP BY Country;
```

Returns one average age for each country.

Common combinations:
- COUNT() + GROUP BY
- SUM() + GROUP BY
- AVG() + GROUP BY
- MIN() + GROUP BY
- MAX() + GROUP BY

Rule:
Every selected column that is not an aggregate must appear in GROUP BY.
