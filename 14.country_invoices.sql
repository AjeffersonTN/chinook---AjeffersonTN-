-- Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT i.BillingCountry Country, COUNT(i.BillingCountry) TotalInvoices
FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY TotalInvoices DESC;









