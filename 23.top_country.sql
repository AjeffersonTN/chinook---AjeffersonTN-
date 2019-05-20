-- Which country's customers spent the most?
SELECT TOP 1
MAX(TotalPurchases) TotalPurchases,
Country
FROM
(
SELECT i.BillingCountry Country, SUM(i.total) TotalPurchases
FROM Invoice i
GROUP BY i.BillingCountry
) TotalPurchase
GROUP BY Country
ORDER BY TotalPurchases DESC;












