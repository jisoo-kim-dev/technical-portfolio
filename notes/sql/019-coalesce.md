# Lesson 19: COALESCE

## What is COALESCE?

`COALESCE()` returns the first value that is NOT NULL.

It checks each argument from left to right and stops when it finds a non-NULL value.

### Syntax

```sql
COALESCE(value1, value2, value3)
```

For example:

```sql
COALESCE(NULL, 'USA', 'Canada')
```

Result:

```text
USA
```

because `'USA'` is the first non-NULL value.

## SQL Syntax

```sql
SELECT COALESCE(column_name, replacement_value)
FROM TableName;
```

## How It Works

`COALESCE()` is evaluated separately for each row.

It does **not** search through the entire table for the first non-NULL value.

For each row, SQL checks the arguments from left to right.

Example data:

| CustomerName | Country |
|--------------|---------|
| Alice | USA |
| Bob | NULL |
| Chris | Canada |

Query:

```sql
SELECT
    CustomerName,
    COALESCE(Country, 'Unknown') AS Country
FROM Customers;
```

For Alice:

```sql
COALESCE('USA', 'Unknown')
```

Result:

```text
USA
```

For Bob:

```sql
COALESCE(NULL, 'Unknown')
```

Result:

```text
Unknown
```

For Chris:

```sql
COALESCE('Canada', 'Unknown')
```

Result:

```text
Canada
```

Final result:

| CustomerName | Country |
|--------------|---------|
| Alice | USA |
| Bob | Unknown |
| Chris | Canada |

## Examples

### Replace a NULL text value

```sql
SELECT
    CustomerName,
    COALESCE(Country, 'Unknown') AS Country
FROM Customers;
```

### Replace a NULL numeric value

```sql
SELECT
    Product,
    COALESCE(Amount, 0) AS Amount
FROM Orders;
```

### Check multiple values

```sql
SELECT
    CustomerName,
    COALESCE(HomePhone, MobilePhone, OfficePhone, 'No Phone') AS Phone
FROM Customers;
```

SQL checks the values from left to right:

1. `HomePhone`
2. `MobilePhone`
3. `OfficePhone`
4. `'No Phone'`

It returns the first value that is not NULL.

## COALESCE vs CASE

These two queries produce the same result.

Using `CASE`:

```sql
SELECT
    CustomerName,
    CASE
        WHEN Country IS NULL THEN 'Unknown'
        ELSE Country
    END AS Country
FROM Customers;
```

Using `COALESCE()`:

```sql
SELECT
    CustomerName,
    COALESCE(Country, 'Unknown') AS Country
FROM Customers;
```

`COALESCE()` is shorter and easier to read when you only need to replace NULL values.

## Notes

- `COALESCE()` checks values from left to right.
- It returns the first value that is not NULL.
- It is evaluated separately for each row.
- It does not change the original data stored in the table.
- It only changes the values shown in the query result.
- It can accept two or more arguments.
- The arguments should use compatible data types.
- It is commonly used for data cleaning and reporting.

## Key Takeaways

- `COALESCE()` returns the first non-NULL value.
- It works row by row.
- `COALESCE(column_name, replacement_value)` replaces NULL values in query results.
- It does not permanently update the table.
- It can simplify a `CASE` expression used for NULL handling.