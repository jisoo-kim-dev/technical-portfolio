# Day 12: JOIN Types Summary

## JOIN Family

| JOIN | Keeps | Common Use |
|------|-------|------------|
| INNER JOIN | Matching rows only | ⭐⭐⭐⭐⭐ |
| LEFT JOIN | All rows from left table | ⭐⭐⭐⭐⭐ |
| RIGHT JOIN | All rows from right table | ⭐⭐ |
| FULL OUTER JOIN | All rows from both tables | ⭐ |

---

## INNER JOIN

Returns only rows that exist in both tables.

```sql
SELECT *
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID;
```

---

## LEFT JOIN

Returns every row from the left table.

```sql
SELECT *
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID;
```

Unmatched rows from Orders become NULL.

---

## RIGHT JOIN

Returns every row from the right table.

```sql
SELECT *
FROM Customers c
RIGHT JOIN Orders o
ON c.CustomerID = o.CustomerID;
```

Usually replaced by swapping table order and using LEFT JOIN.

---

## FULL OUTER JOIN

Returns every row from both tables.

```sql
SELECT *
FROM Customers c
FULL OUTER JOIN Orders o
ON c.CustomerID = o.CustomerID;
```

MySQL does not support FULL OUTER JOIN directly.

Equivalent idea:

```sql
SELECT *
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID

UNION

SELECT *
FROM Customers c
RIGHT JOIN Orders o
ON c.CustomerID = o.CustomerID;
```

---

## Which JOIN should I use?

- Need only matching rows → INNER JOIN
- Keep all rows from left table → LEFT JOIN
- Keep all rows from right table → RIGHT JOIN
- Keep all rows from both tables → FULL OUTER JOIN

## Interview Tip

For most Data Analyst roles:

1. INNER JOIN ⭐⭐⭐⭐⭐
2. LEFT JOIN ⭐⭐⭐⭐⭐
3. RIGHT JOIN (know the concept)
4. FULL OUTER JOIN (know the concept and MySQL limitation)
