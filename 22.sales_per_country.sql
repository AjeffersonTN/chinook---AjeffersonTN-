-- Provide a query that shows the total sales per country.
SELECT i.BillingCountry, SUM(i.total) TotalSales
FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY TotalSales DESC; 













