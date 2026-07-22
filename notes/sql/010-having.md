# Day 10: HAVING

## WHERE vs HAVING

WHERE filters rows before grouping.

```sql
SELECT *
FROM Customers
WHERE Age >= 30;
```

HAVING filters groups after GROUP BY.

```sql
SELECT Country, COUNT(*)
FROM Customers
GROUP BY Country
HAVING COUNT(*) >= 2;
```

## Common pattern

```sql
SELECT Country, AVG(Age)
FROM Customers
GROUP BY Country
HAVING AVG(Age) >= 30;
```

## Summary

- WHERE -> filters rows
- GROUP BY -> creates groups
- HAVING -> filters groups
