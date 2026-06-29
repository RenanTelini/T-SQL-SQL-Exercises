/* Use SELECT queries to retrieve data */

/* Use the AdventureWorksLT2022 database */
USE AdventureWorksLT2022;

/* Return all the columns from the table Product from schema SalesLT */
SELECT * FROM SalesLT.Product;

/* Return only Name, StandardCost and ListPrice columns from the Sales table */
SELECT Name, StandardCost, ListPrice FROM SalesLT.Product;

/* Return the Name column and a column that subtracting the StandardCost from the ListPrice column */
SELECT Name, ListPrice - StandardCost FROM SalesLT.Product;

/* Return the same result that the last statment but, because the AS keyword, the Name column now is ProductName and the column from subtracting from ListPrice and StandCost is Markup */
SELECT Name AS ProductName, ListPrice - StandardCost as Markup FROM SalesLT.Product;

/* Return the ProductName, Color and Size columns and the Color and Size columns concatenated from the Sales table */
SELECT ProductNumber, Color, Size, Color + ', ' + Size AS ProductDetails FROM SalesLT.Product;