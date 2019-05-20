--How many Invoices were there in 2009 and 2011?
--What are the respective total sales for each of those years?

SELECT YEAR(i.InvoiceDate) Year, SUM(i.Total) Total
FROM Invoice i 
Where YEAR(i.InvoiceDate) = '2011'
OR YEAR(i.InvoiceDate) ='2009'
Group BY Year(i.InvoiceDate);








