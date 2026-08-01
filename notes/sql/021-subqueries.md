# Lesson 21: Subqueries

## What is a Subquery?

A subquery is a query written inside another SQL query.

The inner query runs first, and its result is used by the outer query.

```sql
SELECT column_name
FROM TableName
WHERE column_name = (
    SELECT column_name
    FROM TableName
);
```

A subquery is placed inside parentheses.

## Why Use Subqueries?

Subqueries are useful when one query depends on the result of another query.

For example, you may want to:

- find customers older than the average customer age
- find customers who placed an order
- find orders above the average order amount
- use one calculated value inside another query
- filter rows using a list returned by another query

## How It Works

Consider this query:

```sql
SELECT CustomerName
FROM Customers
WHERE Age > (
    SELECT AVG(Age)
    FROM Customers
);
```

SQL evaluates it in two steps.

First, the inner query calculates the average age:

```sql
SELECT AVG(Age)
FROM Customers;
```

Suppose the result is:

```text
30
```

Then the outer query becomes conceptually:

```sql
SELECT CustomerName
FROM Customers
WHERE Age > 30;
```

The final result contains customers whose age is above the average.

## Subquery in WHERE with a Comparison Operator

A subquery can return one value and be used with operators such as:

- `=`
- `>`
- `<`
- `>=`
- `<=`
- `<>`

Example:

```sql
SELECT
    CustomerName,
    Age
FROM Customers
WHERE Age > (
    SELECT AVG(Age)
    FROM Customers
);
```

The subquery must return a single value when used with a single-value comparison operator.

## Subquery with IN

Use `IN` when the subquery may return multiple values.

```sql
SELECT CustomerName
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Orders
);
```

The inner query returns the IDs of customers who placed orders.

The outer query returns the names of those customers.

## Subquery with NOT IN

Use `NOT IN` to exclude values returned by a subquery.

```sql
SELECT CustomerName
FROM Customers
WHERE CustomerID NOT IN (
    SELECT CustomerID
    FROM Orders
);
```

This returns customers whose IDs do not appear in the `Orders` table.

### NULL Warning with NOT IN

`NOT IN` can behave unexpectedly if the subquery returns `NULL`.

A safer version filters out `NULL` values:

```sql
SELECT CustomerName
FROM Customers
WHERE CustomerID NOT IN (
    SELECT CustomerID
    FROM Orders
    WHERE CustomerID IS NOT NULL
);
```

Later, `NOT EXISTS` can also be used for this situation.

## Subquery in SELECT

A scalar subquery returns one value and can be used as a column in the result.

```sql
SELECT
    CustomerName,
    (
        SELECT AVG(Age)
        FROM Customers
    ) AS AverageAge
FROM Customers;
```

The average age is repeated for every customer row.

This can be useful for comparing each row with an overall value.

```sql
SELECT
    CustomerName,
    Age,
    (
        SELECT AVG(Age)
        FROM Customers
    ) AS AverageAge
FROM Customers;
```

## Subquery in FROM

A subquery in the `FROM` clause creates a temporary result table for the outer query.

This temporary result must have an alias.

```sql
SELECT
    Country,
    CustomerCount
FROM (
    SELECT
        Country,
        COUNT(*) AS CustomerCount
    FROM Customers
    GROUP BY Country
) AS CountrySummary
WHERE CustomerCount >= 2;
```

The inner query creates a summarized table.

The outer query filters that summarized result.

## Subquery with EXISTS

`EXISTS` checks whether a subquery returns at least one row.

```sql
SELECT CustomerName
FROM Customers AS c
WHERE EXISTS (
    SELECT 1
    FROM Orders AS o
    WHERE o.CustomerID = c.CustomerID
);
```

This returns customers who have at least one matching order.

`SELECT 1` is commonly used because `EXISTS` only checks whether a row exists. It does not use the selected value.

## Correlated Subquery

A correlated subquery refers to a column from the outer query.

```sql
SELECT CustomerName
FROM Customers AS c
WHERE EXISTS (
    SELECT 1
    FROM Orders AS o
    WHERE o.CustomerID = c.CustomerID
);
```

The inner query uses:

```sql
c.CustomerID
```

from the outer query.

Because the subquery depends on the current outer row, SQL evaluates the relationship for each customer.

## Subquery vs JOIN

A subquery and a `JOIN` can sometimes solve the same problem.

Using a subquery:

```sql
SELECT CustomerName
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Orders
);
```

Using a join:

```sql
SELECT DISTINCT c.CustomerName
FROM Customers AS c
INNER JOIN Orders AS o
    ON c.CustomerID = o.CustomerID;
```

Both queries return customers who placed orders.

### When to Use Each

Use a subquery when:

- one query naturally depends on another result
- you need a single calculated value
- the logic is easier to read as separate steps

Use a `JOIN` when:

- you need columns from multiple tables
- you are directly combining related rows
- the relationship is easier to understand as a join

## Common Mistakes

### Forgetting Parentheses

Incorrect:

```sql
SELECT CustomerName
FROM Customers
WHERE Age > SELECT AVG(Age) FROM Customers;
```

Correct:

```sql
SELECT CustomerName
FROM Customers
WHERE Age > (
    SELECT AVG(Age)
    FROM Customers
);
```

### Returning Too Many Values

Incorrect:

```sql
SELECT CustomerName
FROM Customers
WHERE Age = (
    SELECT Age
    FROM Customers
);
```

The inner query may return many ages, but `=` expects one value.

Use `IN` when multiple values are expected:

```sql
SELECT CustomerName
FROM Customers
WHERE Age IN (
    SELECT Age
    FROM Customers
);
```

### Forgetting an Alias for a Subquery in FROM

Incorrect:

```sql
SELECT Country
FROM (
    SELECT Country
    FROM Customers
);
```

Correct:

```sql
SELECT Country
FROM (
    SELECT Country
    FROM Customers
) AS CustomerCountries;
```

## Notes

- A subquery is a query inside another query.
- Subqueries must be enclosed in parentheses.
- The inner query usually runs before the outer query.
- Use comparison operators when the subquery returns one value.
- Use `IN` when the subquery may return multiple values.
- Be careful with `NOT IN` when `NULL` values are possible.
- A subquery in `FROM` must have an alias.
- `EXISTS` checks whether at least one matching row exists.
- A correlated subquery refers to the current row of the outer query.
- Subqueries and joins can sometimes produce the same result.

## Key Takeaways

- Subqueries allow one query to use the result of another query.
- Use scalar subqueries for single calculated values.
- Use `IN` for lists returned by another query.
- Use `EXISTS` to check whether matching rows exist.
- Use a subquery in `FROM` to query a temporary result table.
- Choose between a subquery and a join based on clarity and the data you need.
