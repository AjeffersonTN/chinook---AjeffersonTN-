-- Which sales agent made the most in sales over all?

SELECT TOP 1
MAX(TotalSales) TotalSales, 
SalesAgent
FROM
(
SELECT e.FirstName +' '+e.LastName SalesAgent, SUM(i.Total) TotalSales
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
GROUP BY e.FirstName+' '+e.LastName
) TotalSales
GROUP BY SalesAgent
ORDER BY TotalSales DESC;












