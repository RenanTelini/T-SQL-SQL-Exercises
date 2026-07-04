/* Challenge 3: Retrieve customer contact details */

/* 1. Retrieve customer contact names with middle names if known 
You have been asked to write a query that returns a list of customer names. 
The list must consist of a single column in the format first last 
(for example Keith Harris) if the middle name is unknown, or first middle last 
(for example Jane M. Gates) if a middle name is known. */
SELECT ISNULL(FirstName, '') + ' ' +
	ISNULL(MiddleName + ' ', '') +
	ISNULL(LastName, '')
	AS 'Full Name'
FROM SalesLT.Customer;

/* 2. Retrieve primary contact details
Customers may provide Adventure Works with an email address, a phone number, or both. 
If an email address is available, then it should be used as the primary contact method; 
if not, then the phone number should be used. You must write a query that returns a 
list of customer IDs in one column, and a second column named PrimaryContact that 
contains the email address if known, and otherwise the phone number. */

/* IMPORTANT: In the sample data provided, there are no customer records without an email address. 
Therefore, to verify that your query works as expected, 
run the following UPDATE statement to remove some existing email addresses before creating your query: */
UPDATE SalesLT.Customer
SET EmailAddress = NULL
WHERE CustomerID % 7 = 1;

/* -------------- */

SELECT CustomerID, 
	COALESCE(EmailAddress, Phone, 'n/a') AS 'PrimaryContact'
FROM SalesLT.Customer;

/* 3. Retrieve shipping status
You have been asked to create a query that returns a list of sales order IDs and order dates 
with a column named ShippingStatus that contains the text Shipped for orders with a known ship date, 
and Awaiting Shipment for orders with no ship date. */

/* IMPORTANT: In the sample data provided, there are no sales order header records without a ship date. 
Therefore, to verify that your query works as expected, run the following UPDATE statement 
to remove some existing ship dates before creating your query. */
UPDATE SalesLT.SalesOrderHeader
SET ShipDate = NULL
WHERE SalesOrderID > 71899;

/* -------------- */

SELECT SalesOrderID,
	OrderDate,
	CASE 
		WHEN ShipDate IS NULL THEN 'Awaiting Shipment'
		ELSE  'Shipped'
	END AS ShippingStatus
FROM SalesLT.SalesOrderHeader;