# Lesson 11: INNER JOIN

## What is INNER JOIN?

An `INNER JOIN` combines rows from two related tables based on a matching column.

Real databases often store related data in separate tables, and `JOIN` allows you to retrieve data from both tables in a single query.

## Syntax

```sql
SELECT
    table1.column1,
    table2.column2
FROM Table1
INNER JOIN Table2
ON table1.common_column = table2.common_column;
```

## Example

Return each customer's name and the products they ordered:

```sql
SELECT
    Customers.CustomerName,
    Orders.Product
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

This query returns only the rows where the `CustomerID` exists in both tables.

Result:

| CustomerName | Product |
|--------------|---------|
| Alice | Laptop |
| Bob | Mouse |
| Alice | Keyboard |

## Notes

### Related tables

Example tables:

**Customers**

| CustomerID | CustomerName | Country |
|-----------:|--------------|----------|
| 1 | Alice | USA |
| 2 | Bob | Canada |

**Orders**

| OrderID | CustomerID | Product | Amount |
|--------:|-----------:|---------|-------:|
| 101 | 1 | Laptop | 1200 |
| 102 | 2 | Mouse | 30 |
| 103 | 1 | Keyboard | 80 |

The `CustomerID` column connects the two tables.

### The `ON` clause

The `ON` clause specifies how the tables are related.

```sql
ON Customers.CustomerID = Orders.CustomerID;
```

### Table aliases

Aliases make SQL queries shorter and easier to read.

```sql
SELECT
    c.CustomerName,
    o.Product
FROM Customers AS c
INNER JOIN Orders AS o
ON c.CustomerID = o.CustomerID;
```

## Key Takeaways

- `INNER JOIN` combines related rows from multiple tables.
- The `ON` clause defines how the tables are connected.
- `INNER JOIN` returns only matching rows.
- Table aliases make queries shorter and more readable.