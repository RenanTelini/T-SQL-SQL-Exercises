/* Handle NULL values */

/* Use the AdventureWorksLT2022 database */
USE AdventureWorksLT2022;

/* In this statement, with the TRY_CAST result, ISNULL check if the value is NULL, if it is, ISNULL returns 0 */
SELECT Name, ISNULL(TRY_CAST(Size AS Integer), 0) AS NumericSize FROM SalesLT.Product;

/* This statement concatenates the Color and Size column and use ISNULL function to returns a empty string when the value is NULL */
SELECT ProductNumber, ISNULL(Color, '') + ', ' + ISNULL(Size, '') AS ProductDetails FROM SalesLT.Product;

/* If you want to change a specific value to NULL, you can use the NULLIF function */
/* In this statement, with the NULLIF function the values equals 'Multi' from the Color column are changed to NULL */
SELECT Name, Color, NULLIF(Color, 'Multi') AS SingleColor FROM SalesLT.Product;

/* With the COALESCE function you can compare many columns and will return the first non-null value */
SELECT Name, COALESCE(SellEndDate, SellStartDate) AS StartLastUpdate FROM SalesLT.Product;

/* This statement uses some conditions, such searched CASE expressions, WHEN... THEN, and IS NULL to check the value of the SellEndDate column 
	and assign a value to a column based on whether SellEndDate is NULL or not. */
SELECT Name, SellEndDate,
	CASE
		WHEN SellEndDate IS NULL THEN 'Currently for sale'
		ELSE 'No longer available'
	END AS SalesStatus
FROM SalesLT.Product;

/* This statement use a simple CASE expression and a WHEN... THEN conditions to check the values from the Size column 
	and assign a value to another column based on the value of the Size column */
SELECT Name, Size,
	CASE Size
		WHEN 'S' THEN 'Small'
		WHEN 'M' THEN 'Medium'
		WHEN 'L' THEN 'Large'
		WHEN 'XL' THEN 'Extra-Large'
		ELSE ISNULL(Size, 'n/a')
	END AS ProductSize
FROM SalesLT.Product;