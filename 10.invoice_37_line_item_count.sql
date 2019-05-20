--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT SUM(i.total) TotalSales
FROM Invoice i 
Where YEAR(i.InvoiceDate) = '2011' OR YEAR(i.InvoiceDate) = '2009';








