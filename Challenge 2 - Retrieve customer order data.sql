/* Challenge 2: Retrieve customer order data */

/* 1. Retrieve a list of customer companies.
You have been asked to provide a list of all customer companies 
in the format Customer ID : Company Name - for example, 78: Preferred Bikes. */
SELECT CONVERT(nvarchar(30), CustomerID) + 
	': ' + CompanyName AS 'Customer Companies'
FROM SalesLT.Customer

/* 2. Retrieve a list of sales order revisions.
The SalesLT.SalesOrderHeader table contains records of sales orders. You have been asked to retrieve data for a report that shows:
The purchase order number and revision number in the format * ()* - for example *PO348186287 (2)*.
The order date converted to ANSI standard 102 format (yyyy.mm.dd - for example 2015.01.31).*/
SELECT '*' + 
	PurchaseOrderNumber + 
	' (' + 
	CONVERT(nvarchar(30), RevisionNumber) + 
	')*' AS 'PurchaseOrderNumber + RevisionNumber',
	CONVERT(nvarchar(30), OrderDate, 102) AS OrderDate
FROM SalesLT.SalesOrderHeader