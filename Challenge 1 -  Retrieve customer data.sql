/* Challenge 1: Retrieve customer data */

/* Adventure Works Cycles sells directly to retailers, who then sell products to consumers. 
Each retailer that is an Adventure Works customer has provided a named contact for all 
communication from Adventure Works. The sales manager at Adventure Works has asked you to generate 
some reports containing details of the company's customers to support a direct sales campaign. */

/* 1. Retrieve customer details.
Familiarize yourself with the SalesLT.Customer table by writing a Transact-SQL 
query that retrieves all columns for all customers. */
SELECT * FROM SalesLT.Customer;

/* 2. Retrieve customer name data.
Create a list of all customer contact names that includes the title, 
first name, middle name (if any), last name, and suffix (if any) of all customers. */
SELECT ISNULL(Title, 'n/a') AS Title,
	ISNULL(FirstName, 'n/a') AS FirstName,
	ISNULL(MiddleName,'n/a') AS MiddleName,
	ISNULL(LastName, 'n/a') AS LastName, 
	ISNULL(Suffix,'n/a') AS Suffix
FROM SalesLT.Customer;

/* 3.Retrieve customer names and phone numbers.
Each customer has an assigned salesperson. You must write a query to create a call sheet that lists:
The salesperson.
A column named CustomerName that displays how the customer contact should be greeted (for example, Mr Smith).
The customer's phone number. */
SELECT ISNULL(SalesPerson,  'n/a') AS SalesPerson, 
	ISNULL(Title + LastName, COALESCE(Title, LastName, 'n/a')) AS CustomerName,
	ISNULL(Phone, 'n/a') AS Phone
FROM SalesLT.Customer