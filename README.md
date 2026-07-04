# T-SQL/SQL Exercises

### This repository has some exercises in T-SQL/SQL, this exercises are from <a href=https://learn.microsoft.com/en-us/training/modules/introduction-to-transact-sql/> Introduction to Transact-SQL </a>

### Exercises - Summary:

#### The first exercise is about how to use the SELECT statement, how to retrieve data from a database, how to concatenate text-based columns, perform calculations, and much more.

#### The second exercise is about how to work with data types, how to use the CAST, TRY_CAST and CONVERT functions, the CONVERT function can be used to format DATE values and convert data types. The TRY_CAST function is used when you try to convert one data type to another with the CAST function and raises an error, but when you use TRY_CAST some values can be returned as NULL.

### The third exercise is about handling null values. In this exercise, functions such as ISNULL were used to check if a column value is NULL, NULLIF was used to change a specific value to NULL, and COALESCE was used to compare multiple columns and return the first non-null value. A CASE expression with WHEN...THEN clauses was also used.

## Challenges - Summary:

### Challenge 1. Retrieve customer data: The first challenge was about retrieving customer data from the database. I used functions such as ISNULL and COALESCE, as well as the SELECT statement.

### Challenge 2. Retrieve customer order data: The second exercise is similar to the first. I used the SELECT statement too, but I needed to use the CONVERT function to concatenate columns with different data types.

### Challenge 3. Retrieve customer contact details: In the third and last challenge, I was instructed to use the UPDATE statement because I would work with NULL values, but in the sample data provided, there are no customer records without an email address. After this, I used functions such as COALESCE, ISNULL and CASE expression with WHEN...THEN clauses.