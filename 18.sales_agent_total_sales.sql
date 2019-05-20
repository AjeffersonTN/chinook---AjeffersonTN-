-- Provide a query that shows total sales made by each sales agent.

SELECT e.FirstName +' '+e.LastName SalesAgent, SUM(i.Total) TotalSales
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
GROUP BY e.FirstName+' '+e.LastName;










