--How many Invoices were there in 2009 and 2011?

SELECT COUNT(*) TotalInvoices
FROM Invoice i 
Where YEAR(i.InvoiceDate) = '2011' OR YEAR(i.InvoiceDate) = '2009';






